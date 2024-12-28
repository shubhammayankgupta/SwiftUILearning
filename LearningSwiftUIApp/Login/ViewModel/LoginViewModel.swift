//
//  LoginViewModel.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 28/12/24.
//

import Foundation

struct LoginData {
    var email: String = ""
    var password: String = ""
    var navigate: Bool = false
    var error: String = ""
}


class LoginViewModel: ObservableObject {
    @Published var loginData = LoginData()
    
    func login()  {
        let loginRequest = LoginRequest(username: loginData.email, password: loginData.password)
        var urlRequest = URLRequest(url: URL(string: "https://dummyjson.com/auth/login")!)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        urlRequest.httpBody = try? JSONEncoder().encode(loginRequest)
        HttpUtility.shared.getData(request: urlRequest, resultType: LoginResponse.self) { reuslt in
            DispatchQueue.main.async {
                switch reuslt {
                case .success(let response):
                    print(response)
                case .failure(let error):
                    print(error.localizedDescription)
                default:
                    break
                }
            }
        }
    }
}


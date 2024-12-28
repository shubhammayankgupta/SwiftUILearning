//
//  VideoViewModel.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 15/12/24.
//

import Foundation

class VideoViewModel: ObservableObject {
    @Published var videoData: [VideoData]?
    @Published var isLoading: Bool = false

    func fetchVideos() {
        isLoading = true
        var urlRequest = URLRequest(url: URL(string: "https://api.sampleapis.com/movies/animation")!)
        urlRequest.httpMethod = "get"
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        HttpUtility.shared.getData(request: urlRequest, resultType: [VideoData].self) { reuslt in
            DispatchQueue.main.async {
                switch reuslt {
                case .success(let videoData):
                    self.videoData = videoData
                    self.isLoading = false
                case .failure(let error):
                    print(error.localizedDescription)
                    self.isLoading = false
                default: break
                }
            }
        }
    }
}

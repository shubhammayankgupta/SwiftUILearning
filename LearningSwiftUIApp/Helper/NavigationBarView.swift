//
//  NavigationBarView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 15/12/24.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Content goes here")
            }
            .navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Image("icon.home.user")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}

//
//  VideoView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 15/12/24.
//

import SwiftUI

struct VideoView: View {
    @ObservedObject var loginViewModel = VideoViewModel()
    
    var body: some View {
        VStack {
            if loginViewModel.isLoading {
                ProgressView()
            } else {
                List {
                    if let videoData = loginViewModel.videoData {
                        ForEach(videoData, id: \.id) { video in
                            VideoCellView(video: video)
                        }
                    }
                    
                }.listStyle(.plain)
            }
            
        }
        .onAppear {
            loginViewModel.fetchVideos()
        }.navigationTitle("Videos")
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}

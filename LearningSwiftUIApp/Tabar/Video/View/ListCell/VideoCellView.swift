//
//  VideoCellView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 15/12/24.
//

import SwiftUI

struct VideoCellView: View {
    var video: VideoData?
    var body: some View {
        HStack(alignment: .center, content: {
            AsyncImage(url: URL(string: video?.posterURL ?? "")) { image in
                image.resizable()
            } placeholder: {
                Color.gray
            }
            .frame(width: 150, height: 100)
            
            VStack {
                Text("ID: \(video?.id ?? 0)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Name: \(video?.title ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }) .padding()
    }
}

struct VideoCellView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCellView()
    }
}

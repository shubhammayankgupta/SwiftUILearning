//
//  FeedDetailView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 13/12/24.
//

import SwiftUI

struct FeedDetailView: View {
    var feed: Feeds
    var body: some View {
        VStack() {
            Image(feed.feedImage)
                .resizable()
                .frame(width: 200, height: 200)
            Spacer()
            VStack {
                Text(feed.userName)
                Text(feed.userDesignation)
            }
            
            Spacer()
        }
    }
}

struct FeedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FeedDetailView(feed: Feeds(userImage: "icon.home.user", userName: "test", userDesignation: "test", feedImage: "icon.home.feed"))
    }
}

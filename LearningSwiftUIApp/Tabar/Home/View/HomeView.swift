//
//  HomeView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 12/12/24.
//

import SwiftUI
struct HomeView: View {
    @ObservedObject var viewModel = HomeFeedViewModel()
    var body: some View {
            List {
                ForEach(viewModel.arrFeeds ?? [], id: \.userName) { feed in
                    NavigationLink(destination: FeedDetailView(feed: feed)) {
                        FeedCellView(feed: feed).padding(.bottom, 20)
                    }
                    
                }
            }.listRowSeparator(Visibility.visible)
            .navigationTitle("Feeds")
            .listStyle(.plain)
            .onAppear {
                viewModel.fetchData()
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FeedCellView: View {
    var feed: Feeds
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image(feed.userImage)
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack {
                        Text(feed.userName).font(.headline)
                        Text(feed.userDesignation).font(.subheadline)
                    }
                    Spacer()
                }
                Image(feed.feedImage)
                    .resizable()
                Divider()
                    .background(Color.black)
                    .frame(height: 2)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "hand.thumbsup").frame(width: 20, height: 20)
                        Text("Like")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "message").frame(width: 20, height: 20)
                        Text("Comment")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "message").frame(width: 20, height: 20)
                        Text("Repost")
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "message").frame(width: 20, height: 20)
                        Text("Send")
                    }
                    Spacer()
                }
            }
        }
    }
}

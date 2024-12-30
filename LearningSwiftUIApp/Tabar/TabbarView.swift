//
//  TabbarView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 13/12/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            VideoView()
                .tabItem {
                    Text("Video")
                    Image(systemName: "video.bubble.left.fill")
                }
            HomeView()
                .tabItem {
                    Text("My Network")
                    Image(systemName: "person.2.fill")
                }
            HomeView()
                .tabItem {
                    Text("Notification")
                    Image(systemName: "bell.fill")
                }
            TaskView()
                .tabItem {
                    Text("Task")
                    Image(systemName: "tray.2.fill")
                }
        }.navigationTitle("Feeds")
            .accentColor(Color.black)
            .navigationBarBackButtonHidden()
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}

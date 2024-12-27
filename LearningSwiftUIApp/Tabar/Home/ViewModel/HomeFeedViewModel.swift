//
//  HomeFeedViewModel.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 27/12/24.
//

import Foundation

class HomeFeedViewModel: ObservableObject {
    @Published var arrFeeds: [Feeds]?
    
    func fetchData() {
        arrFeeds = [Feeds(userImage: "icon.home.user", userName: "Shubham Gupta", userDesignation: "Sr. iOS Developer", feedImage: "icon.home.feed"), Feeds(userImage: "icon.home.user", userName: "Shubham Gupta", userDesignation: "Sr. iOS Developer", feedImage: "icon.home.feed"), Feeds(userImage: "icon.home.user", userName: "Shubham Gupta", userDesignation: "Sr. iOS Developer", feedImage: "icon.home.feed"), Feeds(userImage: "icon.home.user", userName: "Shubham Gupta", userDesignation: "Sr. iOS Developer", feedImage: "icon.home.feed"),Feeds(userImage: "icon.home.user", userName: "Shubham Gupta", userDesignation: "Sr. iOS Developer", feedImage: "icon.home.feed")]
    }
    
}

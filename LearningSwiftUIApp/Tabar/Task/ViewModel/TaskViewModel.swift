//
//  TaskViewModel.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 28/12/24.
//

import Foundation
class TaskViewModel: ObservableObject {
    @Published var tasks: [Task]?
    
    func createMockData() {
        tasks = [Task(id: 1, title: "Test", description: "Test Desc", isActive: false, createdOn: Date()), Task(id: 2, title: "Test", description: "Test Desc", isActive: true, createdOn: Date()), Task(id: 3, title: "Test", description: "Test Desc",isActive: true, createdOn: Date())]
    }
    
    func getTask(isActive: Bool) {
        self.createMockData() // this is for temporary data
        tasks = tasks?.filter({$0.isActive == isActive})
    }
}

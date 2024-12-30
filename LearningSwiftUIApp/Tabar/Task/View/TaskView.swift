//
//  TaskView.swift
//  LearningSwiftUIApp
//
//  Created by Shubham Gupta on 28/12/24.
//

import SwiftUI
struct TaskView: View {
    @ObservedObject var taskViewModel = TaskViewModel()
    @State private var pickerValues: [String] = ["Active", "Completed"]
    @State private var selectedPickerValue: String = "Active"
    @State private var selectedData: Date = Date()
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Picker Filter", selection: $selectedPickerValue) {
                    ForEach(pickerValues, id: \.self) {pickerValue in
                        Text(pickerValue)
                    }
                }.pickerStyle(.segmented)
                    .onChange(of: selectedPickerValue) { _ in
                        taskViewModel.getTask(isActive: selectedPickerValue == "Active")
                    }
                
                List(taskViewModel.tasks ?? [], id: \.id) { task in
                    VStack(alignment: .leading, content: {
                        Text(task.title ?? "").font(.title)
                        HStack {
                            Text(task.description ?? "").font(.subheadline).lineLimit(2)
                            Spacer()
                            Text(task.createdOn?.toString() ?? "").font(.subheadline)
                        }
                    })
                }.listStyle(.plain)
                    .navigationTitle("Tasks")
            }
            .onAppear {
                taskViewModel.getTask(isActive: true)
            }
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Add")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}

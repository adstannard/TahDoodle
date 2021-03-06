//
//  TaskListView.swift
//  TahDoodle
//
//  Created by Andrew Stannard on 14/04/2021.
//

import SwiftUI

struct TaskListView: View {
    
    @ObservedObject var taskStore: TaskStore
    
    var body: some View {
        List {
            ForEach(taskStore.tasks) { task in
                TaskView(title: task.title)
                    .contextMenu {
                        Button("Delete") {
                            taskStore.remove(task)
                        }
                    }
            }.onDelete { indexSet in
                indexSet.forEach { index in
                    let task = taskStore.tasks[index]
                    taskStore.remove(task)
                }
            }
        }.animation(.easeIn)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(taskStore: .sample)
    }
}

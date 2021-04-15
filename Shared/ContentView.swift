//
//  ContentView.swift
//  Shared
//
//  Created by Andrew Stannard on 14/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    let taskStore: TaskStore
    @State private var newTaskTitle = ""
    
    private var newTaskView: some View {
        HStack {
            TextField("Something to do", text: $newTaskTitle)
            Button("Add Task") {
                let task = Task(title: newTaskTitle)
                taskStore.add(task)
                newTaskTitle = ""
            }.disabled(newTaskTitle.isEmpty)
        }.padding()
    }
    
    
    var body: some View {
        VStack {
            newTaskView
            TaskListView(taskStore: taskStore)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: .sample)
    }
}

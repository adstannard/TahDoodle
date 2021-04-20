//
//  NewTaskView.swift
//  TahDoodle
//
//  Created by Andrew Stannard on 20/04/2021.
//

import SwiftUI

struct NewTaskView: View {
    
    let taskStore: TaskStore
    @State private var newTaskTitle = ""

    var body: some View {
         HStack {
            TextField("Something to do", text: $newTaskTitle)
            Button("Add Task") {
                let task = Task(title: newTaskTitle)
                taskStore.add(task)
                newTaskTitle = ""
            }.disabled(newTaskTitle.isEmpty)
        }.padding()
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: .sample)
    }
}

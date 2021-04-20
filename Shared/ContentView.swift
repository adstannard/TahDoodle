//
//  ContentView.swift
//  Shared
//
//  Created by Andrew Stannard on 14/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    let taskStore: TaskStore
    
    var body: some View {
        VStack {
            NewTaskView(taskStore: taskStore)
            TaskListView(taskStore: taskStore)
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: .sample)
    }
}

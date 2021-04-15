//
//  TahDoodleApp.swift
//  Shared
//
//  Created by Andrew Stannard on 14/04/2021.
//

import SwiftUI

@main
struct TahDoodleApp: App {
    let taskStore = TaskStore()
    var body: some Scene {
        WindowGroup {
            ContentView(taskStore: taskStore)
        }
    }
}

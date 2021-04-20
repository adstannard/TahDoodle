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
            #if os(macOS)
            ContentView(taskStore: taskStore)
                .frame(minWidth: 200,
                       maxWidth: 300,
                       minHeight: 200)
            #else
            ContentView(taskStore: taskStore)
            #endif
        }
    }
}

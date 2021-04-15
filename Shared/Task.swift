//
//  Task.swift
//  TahDoodle
//
//  Created by Andrew Stannard on 14/04/2021.
//

import Foundation

struct Task: Equatable, Identifiable {
    
    let id: UUID
    let title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
    
}

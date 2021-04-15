//
//  TaskView.swift
//  TahDoodle
//
//  Created by Andrew Stannard on 14/04/2021.
//

import SwiftUI

struct TaskView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .padding(.vertical, 4)
            .font(.title3)
    }
}

struct TaskCellPreview: PreviewProvider {
    static var previews: some View {
        TaskView(title: "Finish this app")
    }
}

//
//  todoitem.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-09.
//

import SwiftData

@Model
class todoietemm: Identifiable{
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
}


extension todoietemm {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: todoietemm.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            todoietemm(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            todoietemm(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            todoietemm(title: "Call mom", done: false)
        )

        return container
    }
}


//
//  todolistApp.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//

import SwiftUI
import SwiftData

@main
struct todolistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for:todoietemm.self)
        }
    }
}

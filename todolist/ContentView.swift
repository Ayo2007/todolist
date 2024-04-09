//
//  ContentView.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//

import SwiftUI
// MARK: Stored Properties




struct ContentView: View {
    
    //The item currently being added
    @State var newItemDiscrpit = ""
    
    
    // The search text
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    
                   
                    ItemView(title: "Study for Chemistry quiz", done: false)
                    ItemView(title: "Finish Computer Scienece assignment", done: true)
                    ItemView(title: "Go for a run around campus", done: false)
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDiscrpit)
                    Button("ADD") {
                        // Add the new item to to-do
                    }
                    .font(.caption)
                    
                }
                .padding(20)
            }
            .navigationTitle("To Do")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: { Text(title) },
            icon: { Image(systemName: done == true ? "checkmark.circle" : "circle") }
        )
    }
}

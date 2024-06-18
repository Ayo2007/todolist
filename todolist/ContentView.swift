//
//  ContentView.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//
import SwiftData
import SwiftUI
// MARK: Stored Properties




struct ContentView: View {
    
    //The item currently being added
    @State var newItemDescription = ""
    
    
    // The search text
    @State var searchText = ""
    
    // Access the model context (required to additions, deletions, update, etc
    @Environment(\.modelContext)var modelContext
    // RThe list to-do items
    @Query var todos: [todoietemm] = []
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)

                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new item to to-do
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                    
                }
                .padding(20)
            }
            .navigationTitle("To Do")
        }
        .padding()
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create new to-do item instance
        let todo = todoietemm(
            title: title,
            done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
        
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }

}




#Preview {
    ContentView()
        .modelContainer(todoietemm.preview)
}


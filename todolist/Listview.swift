//
//  Listview.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//
import SwiftUI

struct ListView: View {
    
    //MARK: Stored properties
    let reminder: String
    let reminderColor: Color
   
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        
       
        HStack {
            
            Image(systemName: "circle")
                .foregroundColor(Color.blue)
            
            VStack (alignment: .leading) {
                
                // First layer
                Text(reminder)
                    .foregroundStyle(reminderColor)
              
            }
        }
    }
}

#Preview {
    ListView(reminder:"Call auto body shop", reminderColor: .black)
}

//
//  Listview.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//


import SwiftUI

struct ItemView: View {
    
    //MARK: Stored properties
    @Bindable var currentItem: todoietemm
    
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                            
            }
        )
    }
}
        
        
       // #Preview {
            // List{
              //  ItemView(currentItem: Binding.constant (firstItem))
               // ItemView(currentItem: Binding.constant (secondItem))
         //   }
    //    }
    

//
//  Listview.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-08.
//
import SwiftUI

struct ListView: View {
    
    //MARK: Stored properties
    let currentItem: todoietemm
    
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
            }
        )
    }
}
        
        
        #Preview {
            List{
                ItemView(currentItem: firstItemc)
                ItemView(currentItem: secondItem)
            }
        }
    

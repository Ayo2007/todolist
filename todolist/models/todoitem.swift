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


 let firstItem = todoietemm(title: "Study for Chemistry quiz", done: false)
let secondItem = todoietemm(title: "Finish Computer Science assignment", done: true)
let thirdItem = todoietemm(title: "Go for a run around campus", done: false)

let exampleItems = [
firstItem
,

secondItem
,

thirdItem
,

]


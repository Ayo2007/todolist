//
//  todoitem.swift
//  todolist
//
//  Created by Ayodeji Ogunkinle on 2024-04-09.
//

import Foundation

struct todoietemm: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
    
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


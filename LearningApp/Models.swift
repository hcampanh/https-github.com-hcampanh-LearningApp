//
//  Models.swift
//  LearningApp
//
//  Created by henrique campanha on 29/12/2021.
//

import Foundation
struct Module: Decodable , Identifiable{
    var id:Int
    var category:String
    var content:[Content]
}
struct Content: Decodable , Identifiable{
    var id:Int
    var images:String
    var time:String
    var description:String
    var lessons:[Lessons]
}
struct Lessons : Decodable , Identifiable {
    var id:Int
    var title: String
    var video:String
    var duration:String
    var explanation:String
}

struct Test: Decodable , Identifiable {
    var id:String
    var image:String
    var time:String
    var description:String
    var questions: [Question]
}
struct Question: Decodable , Identifiable {
    var id:Int
    var content: String
    var answers: String
}

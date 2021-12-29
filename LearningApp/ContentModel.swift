//
//  ContentModel.swift
//  LearningApp
//
//  Created by henrique campanha on 29/12/2021.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    var styleData:Data?
    
    init(){
        getLocalData()
    }
    
    func getLocalData(){
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        do{
        let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
           let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            self.modules = modules
        }
        catch{
            //error
            print("couldnt parse local data")
        }
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do{
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }
        catch{
            //error
            print("couldnt parse local data")
        }
    }
}

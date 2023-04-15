//
//  File.swift
//  
//
//  Created by Yasamin  on 1/25/1402 AP.
//

import Foundation
import Fluent
import Vapor

final class Planet : Model, Content {
    
    static let schema = "planets"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name : String
    
    init() {}
    
    init(id : UUID? = nil, name: String){
        
        self.id = id
        self.name = name
        
        
    }
    
}

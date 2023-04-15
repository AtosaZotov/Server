//
//  File.swift
//  
//
//  Created by Yasamin  on 1/25/1402 AP.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreatePlanet : Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("planets")
            .id()
            .field("name", .string)
            .create()
        
    }
//    undo
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("planets").delete()
        
    }
    
    
}

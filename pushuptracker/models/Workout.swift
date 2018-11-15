//
//  Workout.swift
//  pushuptracker
//
//  Created by Joshua on 11/14/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import Foundation

class Workout: Codable {
    let name: String
    let date: Date
    let pushupsCompleted:Int
    
    init(name: String, date: Date, pushupsCompleted: Int) {
        self.name = name
        self.date = date
        self.pushupsCompleted = pushupsCompleted
    }
}

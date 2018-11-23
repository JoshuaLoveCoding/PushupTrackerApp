//
//  Workout.swift
//  pushuptracker
//
//  Created by Joshua on 11/14/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import Foundation

struct Workout: Codable {
    let name: String
    let date: Date
    let pushupsCompleted:Int
}

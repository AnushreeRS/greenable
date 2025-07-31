//
//  Task + Fun Fact Data.swift
//  greenable
//
//  Created by Olive Luong on 7/30/25.
//

import Foundation
import SwiftData

let seedTask = [
    "Be mindful of your water usage today!",
    "Be mindful of your electricity usage today!",
    "Be mindful of your plastic usage today!",
    "Be mindful of your gas output today!",
    "Be mindful of your trash output today!",
    "Watch a reel about nature!",
    "Watch a reel about wildlife!",
    "Watch a reel about an environmentally-friendly business!",
    "Watch a reel about recent environmentally-friendly efforts!",
    "Tell one person to do the task you had yesterday!"
]

let calendar = Calendar.current
let today = Date()
let dayOfYear = calendar.ordinality(of: .day, in: .year, for: today)!

let seedTIndex = (dayOfYear - 1) % seedTask.count
let dailySeedT = seedTask[seedTIndex]

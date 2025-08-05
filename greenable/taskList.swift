//
//  taskList.swift
//  greenable
//
//  Created by Anushree RS on 8/1/25.
//

// LeafPoint.swift
import Foundation
import SwiftData
@Model
class LeafPoint: Identifiable {
    var point: String
    init(point: String) {
        self.point = point
    }
}
var counter = 0

//
//  Item.swift
//  Sprint1
//
//  Created by Alex Jumbo on 3/4/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

//
//  FoodOffer.swift
//  testEating
//
//  Created by PENG XU on 4/30/16.
//  Copyright © 2016 PENG XU. All rights reserved.
//

import Foundation

class FoodOffer {
    var name: String
    var creatorName: String
    var time: NSDate
    
    init(name: String, creatorName: String){
        self.name = name
        self.creatorName = creatorName
        self.time = NSDate()
    }
}
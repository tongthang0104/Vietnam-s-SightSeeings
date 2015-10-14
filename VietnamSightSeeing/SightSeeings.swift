//
//  SightSeeings.swift
//  VietnamSightSeeing
//
//  Created by Thang H Tong on 10/14/15.
//  Copyright © 2015 Thang. All rights reserved.
//

import Foundation

class SightSeeings {
    
    let name: String
    let location: String
    let population: Int
    let area: Float
    let imageName: String
    
    
    init(name: String, location: String, population: Int, area: Float) {
        self.name = name
        self.location = location
        self.population = population
        self.area = area
        self.imageName = name.lowercaseString
    }
    
}


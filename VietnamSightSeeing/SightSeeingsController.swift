//
//  SightSeeingsController.swift
//  VietnamSightSeeing
//
//  Created by Thang H Tong on 10/14/15.
//  Copyright © 2015 Thang. All rights reserved.
//

import Foundation

class SightSeeingsController {
  
    // Create the sightseeings
    static var sightSeeing: [SightSeeings] {
        
        
        let sapa = SightSeeings(name: "SaPa Mountain", location: "Northest Region of Vietnam", population: 8975, area: 24.02)
        let haNoi = SightSeeings(name: "Ha Noi Capitol", location: "North Region of Vietnam", population: 7087700, area: 3324.5)
        let haLongBay = SightSeeings(name: "Ha Long Bay", location: "In Capitol Ha Noi", population: 221580, area: 271.95)
        let hoiAn = SightSeeings(name: "Hoi An City", location: "Middle Region of Vietnam", population: 121716, area: 60)
        let nhaTrang = SightSeeings (name: "Nha Trang City", location: "South Central of Vietnam", population: 400000, area: 252.6)
        let saigon = SightSeeings(name: "Saigon City", location: "South Region of Vietnam", population: 7981900 , area: 2095.5)
        let phuQuoc = SightSeeings(name: "Phu Quoc", location: "Southest Region of Vietnam", population: 103000, area: 593.05)
        let caMau = SightSeeings(name: "Ca Mau City", location: "Southest Region of Vietnam", population: 2058 , area: 1200000)
        
        return [sapa, haNoi, haLongBay, hoiAn, nhaTrang, saigon, phuQuoc, caMau]
    }
}


//
//  Data.swift
//  Deprem_Api_SwiftUI
//
//  Created by Mert Ala on 19.02.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import Foundation

struct Properties: Decodable, Hashable {
    var mag: Double
    var place: String
    var time: Int
    var detail: String
    var title: String
}


struct Features: Decodable, Hashable {
    var properties: Properties
  
}
struct EarthQuakeAPIList: Decodable {
    var features: [Features]
}



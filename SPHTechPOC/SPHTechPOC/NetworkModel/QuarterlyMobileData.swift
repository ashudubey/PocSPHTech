//
//  QuarterlyMobileData.swift
//  SPHTechPOC
//
//  Created by Ashutosh Dubey on 28/01/19.
//  Copyright © 2019 SPHTech. All rights reserved.
//

import Foundation


struct QuarterlyMobileData: Codable {
    let  quarterName: String
    let  volume: String

    private enum CodingKeys: String, CodingKey {
        case quarterName = "quarter"
        case volume = "volume_of_mobile_data"

    }

    var description: String {
        get {
            return "quarterName"
        }
    }

}

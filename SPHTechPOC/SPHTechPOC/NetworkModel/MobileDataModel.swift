//
//  MobileDataModel.swift
//  SPHTechPOC
//
//  Created by Ashutosh Dubey on 28/01/19.
//  Copyright © 2019 SPHTech. All rights reserved.
//

import Foundation

struct Response: Codable {
    let help: String
    let success: Bool
    let result : MobileDataModel


    private enum CodingKeys: String, CodingKey {
        case help
        case success
        case result
    }

    var description: String {
        get {
            return "help"
        }
    }
}

struct MobileDataModel: Codable {
    let resource_id: String
    let records: [QuarterlyMobileData]

    private enum CodingKeys: String, CodingKey {
        case resource_id = "resource_id"
        case records
    }

    var description: String {
        get {
             return "resource_id"
        }
    }

}

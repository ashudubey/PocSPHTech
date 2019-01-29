//
//  MobileDataRequest.swift
//  SPHTechPOC
//
//  Created by Ashutosh Dubey on 28/01/19.
//  Copyright © 2019 SPHTech. All rights reserved.
//

import Foundation

class MobileDataRequest: NetworkRequest {

    var method = RequestType.GET
    var path = "action/datastore_search"
    var parameters = [String: String]()

    init(resource_id: String) {
        parameters["resource_id"] = resource_id
    }
}

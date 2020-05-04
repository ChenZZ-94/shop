//
//  ApiBase.swift
//  demon
//
//  Created by 陳ゼイ on 2020/5/2.
//  Copyright © 2020 陳ゼイ. All rights reserved.
//

import Foundation
import UIKit

class ApiBase: NSObject {
    final var header: [String: String]? = nil
    final var body: [String: Any]? = nil
    final var httpMethod: HttpMethod? = nil
    final var timeOut: TimeOut = ._30sec
   
    override init() {
        super.init()
        self.header = ["Content-Type": ContentType.multipart.rawValue, "X-OS": "iOS", "X-OS-Ver": UIDevice.current.systemVersion, "Accept": Accept.JSON.rawValue, "User-Agent": "merchant-app"]
    }
    
}

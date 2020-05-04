//
//  A20110101.swift
//  demon
//
//  Created by 陳ゼイ on 2020/5/1.
//  Copyright © 2020 陳ゼイ. All rights reserved.
//

import Foundation

struct A20110101Request {
    var grantType: GrantType
    var userName: String?
    var password: String?
    var accessToken: String?
    
    init(_ grantType: GrantType, _ userName: String? = nil, _ password: String? = nil, _ accessToken: String? = nil) {
        self.grantType = grantType
        self.userName = userName
        self.password = password
        self.accessToken = accessToken
    }
}

struct A20110101Response: Codable {
    var token_type: String
    var access_token: String
    var goods_kind: String
}

class A20110101: ApiBase {
    var response: A20110101Response?
    init(_ requset: A20110101Request) {
        super.init()
        self.httpMethod = .POST
        if requset.grantType == .password {
            self.body = ["grant_type": requset.grantType.rawValue, "userName": requset.userName!, "password": requset.password!]
        }else {
            self.body = ["grant_type": requset.grantType.rawValue, "access_token": requset.accessToken!]
        }
        
        
    }
    
    
}


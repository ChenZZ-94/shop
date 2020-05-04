//
//  ApiEnum.swift
//  demon
//
//  Created by 陳ゼイ on 2020/5/2.
//  Copyright © 2020 陳ゼイ. All rights reserved.
//

import Foundation

enum GrantType: String {
    case password = "password"
    case accessToken = "access_token"
}
enum HttpMethod: String {
    case POST = "POST"
}
//タイムアウト
enum TimeOut: Int {
    case _0sec = 0
    case _30sec = 30
    case _60sec = 60
}

enum ContentType: String {
    case multipart = "multipart/form-data"
}

enum Accept: String {
    case JSON = "application/json"
}

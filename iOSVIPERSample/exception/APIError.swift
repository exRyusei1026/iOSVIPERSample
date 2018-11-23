//
//  APIError.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

enum APIError: Error {
    case notFound
    case forbidden
    case unknown
}

extension APIError {
    var message: String {
        get {
            switch self {
            case .notFound:
                return "not found"
            case .forbidden:
                return "forbidden"
            case .unknown:
                return "unknown error has occurred"
            }
        }
    }
}

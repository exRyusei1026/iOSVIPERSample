//
//  APIClient.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/24.
//  Copyright © 2018 小林健人. All rights reserved.
//

// HttpClientとかからWebAPI叩いて云々
protocol APIClient {
    func fetchItems() -> [Item]
    func fetchItem(by itemID: String) -> Item?
}

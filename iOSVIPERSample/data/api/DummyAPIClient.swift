//
//  DummyAPIClient.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/24.
//  Copyright © 2018 小林健人. All rights reserved.
//

class DummyAPIClient: APIClient {
    func fetchItems() -> [Item] {
        return [
            Item(id: "1", name: "ばなな", description: "あたまがわるい"),
            Item(id: "2", name: "りんご", description: "赤い"),
            Item(id: "3", name: "いちご", description: "これも赤い"),
            Item(id: "4", name: "ぶどう", description: nil),
            Item(id: "5", name: "みかん", description: "かんかん！")
        ]
    }

    func fetchItem(by itemID: String) -> Item? {
        return [
            Item(id: "1", name: "ばなな", description: "あたまがわるい"),
            Item(id: "2", name: "りんご", description: "赤い"),
            Item(id: "3", name: "いちご", description: "これも赤い"),
            Item(id: "4", name: "ぶどう", description: nil),
            Item(id: "5", name: "みかん", description: "かんかん！")
            ]
            .filter { $0.id == itemID }
            .first
    }
}

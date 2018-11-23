//
//  DummyDatabase.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/24.
//  Copyright © 2018 小林健人. All rights reserved.
//

class DummyDatabase: Database {
    // オンメモリ
    var items: [Item] = []

    func save(_ items: [Item]) {
        self.items = items
    }

    func save(_ item: Item) {
        guard !items.contains(where: { $0.id == item.id }) else {
            return
        }
        items.append(item)
    }

    func findItems() -> [Item] {
        return items
    }

    func findItem(by id: String) -> Item? {
        return items.filter { $0.id == id }.first
    }
}

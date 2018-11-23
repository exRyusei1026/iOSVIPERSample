//
//  ItemDataRepository.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

class ItemDataRepository: ItemRepository {
    var api: APIClient
    var db: Database

    var dirty = false // データが最新かどうか

    init(api: APIClient, db: Database) {
        self.api = api
        self.db = db
    }

    var items: [Item] {
        let localItems = db.findItems()
        if dirty || !localItems.isEmpty {
            return localItems
        }
        let remoteItems = api.fetchItems()
        db.save(remoteItems)
        dirty = true
        return remoteItems
    }

    func item(by id: String) -> Item? {
        if let localItem = db.findItem(by: id), dirty {
            return localItem
        } else {
            guard let remoteItem = api.fetchItem(by: id) else {
                return nil
            }
            db.save(remoteItem)
            dirty = true
            return remoteItem
        }
    }
}

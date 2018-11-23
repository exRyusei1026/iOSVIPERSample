//
//  Database.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/24.
//  Copyright © 2018 小林健人. All rights reserved.
//

protocol Database {
    func save(_ items: [Item])
    func save(_ item: Item)
    func findItems() -> [Item]
    func findItem(by id: String) -> Item?
}

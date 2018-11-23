//
//  ItemRepository.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

protocol ItemRepository {
    var items: [Item] { get }
    func item(by id: String) -> Item?
}

//
//  HomeInteractor.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/21.
//  Copyright © 2018 小林健人. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorInput {
    weak var output: HomeInteractorOutput!
    var repository: ItemRepository!

    func fetchItems() {
        // 本来ならrepositoryからはObservable or Coroutineで非同期処理をする
        let items = repository.items
        output.didItemsFetched(items)
    }
}

//
//  DetailInteractor.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import Foundation

class DetailInteractor: DetailInteractorInput {
    weak var output: DetailInteractorOutput!
    var repository: ItemRepository!

    func fetchItem(by id: String) {
        guard let item = repository.item(by: id) else {
            output.didFetchFailed(error: APIError.notFound)
            return
        }
        output.didItemFetched(item)
    }
}

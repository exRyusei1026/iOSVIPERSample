//
//  HomePresenter.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/21.
//  Copyright © 2018 小林健人. All rights reserved.
//

import Foundation

class HomePresenter: HomePresentation {
    weak var view: HomeView?
    var interactor: HomeInteractorInput!
    var router: HomeWireframe!

    func updateView() {
        interactor.fetchItems()
    }

    func gotoDetail(_ item: Item) {
        router.pushDetail(item)
    }
}

extension HomePresenter: HomeInteractorOutput {
    func didItemsFetched(_ items: [Item]) {
        view?.showItems(items)
    }

    func didFetchFailed(error: Error) {
        view?.showErrorPopup(message: (error as? APIError)?.message ?? error.localizedDescription)
    }
}

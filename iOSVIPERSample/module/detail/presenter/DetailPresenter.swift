//
//  DetailPresenter.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import Foundation

class DetailPresenter: DetailPresentation {
    weak var view: DetailView?
    var interactor: DetailInteractorInput!
    var router: DetailWireframe!

    func updateView(id: String) {
        interactor.fetchItem(by: id)
    }
}

extension DetailPresenter: DetailInteractorOutput {
    func didItemFetched(_ item: Item) {
        view?.showItem(item)
    }

    func didFetchFailed(error: Error) {
        view?.showErrorPopup(message: (error as? APIError)?.message ?? error.localizedDescription)
    }
}

//
//  DetailContract.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

// MARK: Implement on ViewController
protocol DetailView: class {
    var presenter: DetailPresentation! { get set }
    func showItem(_ item: Item)
    func showErrorPopup(message: String)
}

// MARK: Implement on Presenter
protocol DetailPresentation: class {
    var view: DetailView? { get set }
    var interactor: DetailInteractorInput! { get set }
    var router: DetailWireframe! { get set }
    func updateView(id: String)
}
protocol DetailInteractorOutput: class {
    func didItemFetched(_ item: Item)
    func didFetchFailed(error: Error)
}

// MARK: Implement on Interactor
protocol DetailInteractorInput: class {
    var output: DetailInteractorOutput! { get set }
    var repository: ItemRepository! { get set }

    func fetchItem(by id: String)
}

// MARK: Implement on Router
protocol DetailWireframe: Wireframe {
    static func assembleModule(by itemID: String) -> UIViewController
}

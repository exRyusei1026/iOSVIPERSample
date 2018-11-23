//
//  HomeContract.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/21.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

// MARK: Implement on ViewController
protocol HomeView: class {
    var presenter: HomePresentation! { get set }
    func showItems(_ items: [Item])
    func showErrorPopup(message: String)
}

// MARK: Implement on Presenter
protocol HomePresentation: class {
    var view: HomeView? { get set }
    var interactor: HomeInteractorInput! { get set }
    var router: HomeWireframe! { get set }
    func updateView()
    func gotoDetail(_ item: Item)
}
protocol HomeInteractorOutput: class {
    func didItemsFetched(_ items: [Item])
    func didFetchFailed(error: Error)
}

// MARK: Implement on Interactor
protocol HomeInteractorInput: class {
    var output: HomeInteractorOutput! { get set }
    var repository: ItemRepository! { get set }

    func fetchItems()
}

// MARK: Implement on Router
protocol HomeWireframe: Wireframe {
    static func assembleModule() -> UIViewController
    func pushDetail(_ item: Item)
}

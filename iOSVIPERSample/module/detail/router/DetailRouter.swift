//
//  DetailRouter.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

class DetailRouter: DetailWireframe {
    weak var viewController: UIViewController?

    static func assembleModule(by itemID: String) -> UIViewController {
        let view = DetailViewController.instantiateFromStoryboard(by: itemID)
        let presenter = DetailPresenter()
        let interactor = DetailInteractor()
        let router = DetailRouter()

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.output = presenter
        interactor.repository = RootRouter.itemRepository

        router.viewController = view

        return view
    }
}

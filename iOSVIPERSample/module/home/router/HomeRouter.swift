//
//  HomeRouter.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

class HomeRouter: HomeWireframe {
    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let view = HomeViewController.instantiateFromStoryboard()
        let presetner = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()

        view.presenter = presetner

        presetner.view = view
        presetner.interactor = interactor
        presetner.router = router

        interactor.output = presetner
        interactor.repository = RootRouter.itemRepository

        router.viewController = view

        return view
    }

    func pushDetail(_ item: Item) {
        let vc = DetailRouter.assembleModule(by: item.id)
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}

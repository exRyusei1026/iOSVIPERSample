//
//  RootRouter.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

class RootRouter {
    // TODO: Singletonをいい感じに管理したい
    static let itemRepository: ItemRepository = ItemDataRepository(api: DummyAPIClient(), db: DummyDatabase())

    func presentHomeScreen(in window: UIWindow) {
        let vc = HomeRouter.assembleModule()
        let navigationController = UINavigationController(rootViewController: vc)
        window.makeKeyAndVisible()
        window.rootViewController = navigationController
    }
}

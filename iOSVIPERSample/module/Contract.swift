//
//  Contract.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

protocol View: class {
    var presenter: Presentation! { get set }
}

protocol Presentation: class {
    var view: View? { get set }
    var interactor: Interactor! { get set }
    var router: Wireframe! { get set }
}

protocol Interactor: class {
}

protocol Wireframe {
    var viewController: UIViewController? { get set }
}

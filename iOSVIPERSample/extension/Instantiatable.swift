//
//  Instantiatable.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/22.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

protocol Instantiatable {
    static var storyboardName: String { get }
}

extension Instantiatable where Self: UIViewController {
    static var storyboardName: String {
        return ""
    }

    private static var _storyboardName: String {
        if storyboardName.isEmpty {
            return className
        } else {
            return storyboardName
        }
    }

    private static var storyboard: UIStoryboard {
        return UIStoryboard.init(name: _storyboardName, bundle: nil)
    }

    private static var className: String {
        return String(describing: Self.self)
    }

    static func instantiateFromStoryboard() -> Self {
        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Can no instantiate \(Self.className) from \(storyboardName).storyboard")
        }
        return vc
    }

    static func instantiateFromStoryboard(withIdentifier id: String) -> Self {
        guard let vc = storyboard.instantiateViewController(withIdentifier: id) as? Self else {
            fatalError("Can no instantiate \(Self.className) from \(storyboardName).storyboard with id: \(id)")
        }
        return vc
    }
}

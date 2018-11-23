//
//  ViewController+Alert.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default) { _ in }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in }
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}

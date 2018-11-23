//
//  DetailViewController.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/23.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, Instantiatable {
    @IBOutlet weak var descriptionTextView: UITextView!

    var presenter: DetailPresentation!
    var itemID: String!

    static func instantiateFromStoryboard(by itemID: String) -> DetailViewController {
        let vc = DetailViewController.instantiateFromStoryboard()
        vc.itemID = itemID
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.updateView(id: itemID)
    }
}

extension DetailViewController: DetailView {
    func showItem(_ item: Item) {
        title = item.name
        descriptionTextView.text = item.description
    }

    func showErrorPopup(message: String) {
        showAlert(title: "エラー", message: message)
    }
}

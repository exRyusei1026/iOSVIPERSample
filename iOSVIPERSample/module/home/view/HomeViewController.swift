//
//  HomeViewController.swift
//  iOSVIPERSample
//
//  Created by 小林健人 on 2018/11/21.
//  Copyright © 2018 小林健人. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, Instantiatable {
    @IBOutlet weak var tableView: UITableView!

    var presenter: HomePresentation!

    var items: [Item] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.updateView()
    }
}

extension HomeViewController: HomeView {
    func showItems(_ items: [Item]) {
        self.items = items
    }

    func showErrorPopup(message: String) {
        showAlert(title: "エラー", message: message)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard items.count > indexPath.row else {
            return UITableViewCell()
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard items.count > indexPath.row else {
            return
        }
        presenter.gotoDetail(items[indexPath.row])
    }
}

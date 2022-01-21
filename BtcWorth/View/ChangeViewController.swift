//
//  ChangeViewController.swift
//  BtcWorth
//
//  Created by Admin on 21.01.2022.
//

import UIKit

class ChangeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

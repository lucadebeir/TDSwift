//
//  TableViewController.swift
//  TD1
//
//  Created by Luca Debeir on 19/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tablePerson: [ModelTableView] = []
    
    var listPerson: [String] = ["Luca", "Marc-Antoine", "Marine", "Margaux", "Clémence"]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "standard")
        cell.textLabel?.text = listPerson[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
}

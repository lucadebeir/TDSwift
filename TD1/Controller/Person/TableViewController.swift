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

class TableViewController: UITableViewController {

    var tablePerson: Person? = nil
    
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var prenomLabel: UILabel!
    //var listPerson: [String] = ["Luca", "Marc-Antoine", "Marine", "Margaux", "Clémence"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomLabel.text = tablePerson?.lastName
        prenomLabel.text = tablePerson?.firstName
        self.title = "\(tablePerson!.lastName!) \(tablePerson!.firstName!)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! EditTableViewController
        destinationVC.person = tablePerson!
    }
    
}

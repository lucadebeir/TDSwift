//
//  ViewController.swift
//  TD1
//
//  Created by Luca Debeir on 12/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var persons: [Person]? = nil
    var personSelected: Person? = nil
    
    @IBOutlet weak var listPerson: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            persons = try Person.getAll()
        }catch let error as NSError{
            DialogBoxHelper.alert(view: self, error: error)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPerson", for: indexPath) as! TableViewCell
        
        cell.nomPerson.text = "\(String(describing: persons![indexPath.row].lastName!))"
        cell.prenomPerson.text = "\(String(describing: persons![indexPath.row].firstName!))"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.personSelected = persons?[indexPath.row ]
        performSegue(withIdentifier: "showPerson", sender: self)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let supprimerVoyage = UIContextualAction(style: .destructive, title: "Supprimer") {(action, view, nil) in print("Supprimer")}
        supprimerVoyage.image = UIImage(named:"Trash")
        let modifierVoyage = UIContextualAction(style: .normal, title: "Modifier") {(action, view, nil) in print("Modifier")}
        modifierVoyage.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        modifierVoyage.image = UIImage(named:"Trash")
        return UISwipeActionsConfiguration(actions: [supprimerVoyage, modifierVoyage])
    }
    
    var count: Int {
        return self.persons!.count
    }
    
    func getPerson(at indexPath: IndexPath) -> Person? {
        return self.persons![indexPath.row]
    }
    
    @IBAction func uwindToListPerson(segue: UIStoryboardSegue) {
        listPerson.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPerson"{
            let destinationVC = segue.destination as! TableViewController
            destinationVC.tablePerson = personSelected
        }
    }

}


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


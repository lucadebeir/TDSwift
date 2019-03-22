//
//  AddTableViewController.swift
//  TD1
//
//  Created by Luca Debeir on 20/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import UIKit
import CoreData


class AddTableViewController: UITableViewController {
    
    @IBOutlet weak var prenomTF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    var newContactPerso: Person? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPerson(_ sender: Any) {
        let inputs: [String: UITextField] = ["nom": nameTF,"prenom":prenomTF]
        if FormValidatorHelper.validateForm(inputs){
            do{
                newContactPerso = try Person.create(withNom: nameTF.text!, withPrenom: prenomTF.text!)
                DialogBoxHelper.alert(view: self, WithTitle: "Ajout du contact", andMessage: "Ajouté avec succès", closure: {(action) in
                    self.performSegue(withIdentifier: "showListPerson", sender: self)
                })
            }catch{
                DialogBoxHelper.alert(view: self, errorMessage: "Ajout du contact échoué")
            }
            
        }else{
            DialogBoxHelper.alert(view: self, WithTitle: "Erreur", andMessage: "Données du formulaire invalides", closure: nil)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController
        destinationVC.persons!.append(newContactPerso!)
    }
    
}

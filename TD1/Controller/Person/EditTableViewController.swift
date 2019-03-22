//
//  EditTableViewController.swift
//  TD1
//
//  Created by Luca Debeir on 22/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import UIKit

class EditTableViewController: UITableViewController {
    
    var person: Person? = nil
    
    
    @IBOutlet weak var nomPerson: UITextField!
    @IBOutlet weak var prenomPerson: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomPerson.text = person?.lastName
        self.prenomPerson.text = person?.firstName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editPerson(_ sender: Any) {
        let inputs: [String:UITextField] = ["nom": nomPerson, "prenom": prenomPerson]
        if FormValidatorHelper.validateForm(inputs){
            do{
                try person?.edit(withNom: nomPerson.text!, withPrenom: prenomPerson.text!)
                DialogBoxHelper.alert(view: self, WithTitle: "Edition du contact", andMessage: "La mise à jours du contact est effectuée", closure: {(action) in
                    self.performSegue(withIdentifier: "editPerson", sender: self)
                })
            }catch{
                DialogBoxHelper.alert(view: self, errorMessage: "Erreur lors de l'ajout du contact professionnel")
            }
        }else{
            DialogBoxHelper.alert(view: self, errorMessage: "Formulaire invalide")
        }
    }
    
}

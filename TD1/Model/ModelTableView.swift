//
//  ModelTableView.swift
//  TD1
//
//  Created by Luca Debeir on 19/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation
import CoreData
import UIKit

/*class ModelTableView: NSObject {
    var persons: [Person]
    var personSet: PersonSet
    
    /*init(personSet: PersonSet){
        persons=[]
        self.personSet=personSet
        for person in personSet {
            persons.append(person)
        }
    }*/

    
    override init() {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate
            else {
                fatalError()
        }
        
        guard let listPersons = delegate.personsTab
            else { fatalError() }
        self.personSet = listPersons
        self.persons = [Person]()
        for p in self.personSet {
            self.persons.append(p)
        }
    }
    
    var count: Int {
        return self.persons.count
    }
    
    func getPerson(at indexPath: IndexPath) -> Person? {
        return self.persons[indexPath.row]
    }
}*/

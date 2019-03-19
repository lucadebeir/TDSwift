//
//  ModelTableView.swift
//  TD1
//
//  Created by Luca Debeir on 19/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation
import CoreData

class ModelTableView {
    var persons: [Person]
    var personSet: PersonSet
    
    init(personSet: PersonSet){
        persons=[]
        self.personSet=personSet
        for person in personSet {
            persons.append(person)
        }
    }
}

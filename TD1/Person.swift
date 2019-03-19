//
//  Person.swift
//  TD1
//
//  Created by Luca Debeir on 12/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation

class Person {
    
    /* VARIABLES */
    
    let lastName : String
    let firstName : String
    /* Date d'anniversaire : (Date|Vide) */
    var birthdate : Date?
    /* Age : (Age|Vide) */
    var age : Int?
    
    /* fullName utilise une fonction anonyme */
    var fullName : String {
        return self.firstName + " " + self.lastName
    }
    
    /* init = constructeur de Person */
    init(lastName: String, firstName: String, birthdate: Date?) {
        self.firstName = firstName
        self.lastName  = lastName
        if !(birthdate==nil) {
            self.birthdate = birthdate
        }
    }
    
    /* mise à jour de la date de naissance */
    func birthdate(d: Date) -> Person {
        self.birthdate = d
        return self
    }
    
    /* retourne Vrai si les 2 personnes ont les mêmes prénom, nom et date de naissance */
    static func ==(p1: Person, p2: Person) -> Bool {
        var dateEgale : Bool = false
        if let dateBirthdayP1 = p1.birthdate {
            if let dateBirthdayP2 = p2.birthdate {
                dateEgale = dateBirthdayP1.compare(dateBirthdayP2) == ComparisonResult.orderedSame
            }
        } else {
            dateEgale = (p2.birthdate == nil)
        }
        return p1.firstName == p2.firstName && p1.lastName == p2.lastName && dateEgale
    }
    
    /* retourne Vrai si les 2 personnes ont leur prénom, ou leur nom ou leur date de naissance différents */
    static func !=(p1: Person, p2: Person) -> Bool {
        return !(p1 == p2)
    }
    
}

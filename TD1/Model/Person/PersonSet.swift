//
//  PersonSet.swift
//  TD1
//
//  Created by Luca Debeir on 13/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation

/*class PersonSet : Sequence {
    
    fileprivate var listPersonSet : [Person] = []
    
    /// PersonSet→ItPersonSet
    /// retourne un itérateur sur l’ensemble
    public func makeIterator() -> ItPersonSet {
        return ItPersonSet(self)
    }
    
    /// → PersonSet
    /// crée un ensemble de personne vide
    init() {
        self.listPersonSet = []
    }
    
    /// [Person] → PersonSet
    /// crée un ensemble de personnes contenant les Person du tableau passé en paramètre
    init(listPersonSet: [Person]) {
        self.listPersonSet = listPersonSet
    }
    
    func getListPersonSet() -> [Person]? {
        return self.listPersonSet
    }
    
    /// PersonSet→ Bool
    /// Vrai si l’ensemble est vide
    func isEmpty(listPersonSet: [Person]) -> Bool {
        return true
    }
    
    /// PersonSet×Person→PersonSet
    /// ajoute une Person à l’ensemble ; si une personne avec les mêmes nom, prénom, date de naissance est déjà dans l’ensemble, ne modifie pas l’ensemble
    func add(person: Person) -> PersonSet {
        if(!self.contains(person: person)) {
            self.listPersonSet.append(person)
        }
        return self
    }
    
    /// PersonSet×Person→Bool
    /// True si une Person avec les mêmes noms, prénoms et date de naissance appartient à l’ensemble
    func contains(person: Person) -> Bool {
        return self.listPersonSet.contains(where: {$0==person})
    }
    
    /// PersonSet×Person→PersonSet
    /// enlève une Person ayant les même prénom, nom et date de naissance, de l’ensemble
    func remove(person: Person) -> PersonSet {
        if let i = self.indexOf(person: person) {
            self.listPersonSet.remove(at: i)
        }
        return self
    }
    
    /// PersonSet→Int
    /// nombre de Persons dans l’ensemble
    var count : Int {
        return self.listPersonSet.count
    }
    
    /// PersonSet×Person→Person?
    /// cherche une Person avec les mêmes prénoms, nom de famille, et date de naissance et le renvoie, ou Vide si une telle Person n’existe pas dans l’ensemble
    func look(person: Person) -> Person? {
        var it = self.makeIterator()
        while let p = it.next() {
            if(p == person) {
                return p
            }
        }
        return nil
    }
    
    /// PersonSet×String→Bool
    /// True si une Person avec le même nom appartient à l’ensemble
    func contains(nom: String) -> Bool {
        return self.listPersonSet.contains(where: {$0.lastName==nom})
    }
    
    /// PersonSet×String→Bool
    /// True si une Person avec le même nom appartient à l’ensemble
    func contains(prenom: String) -> Bool {
        return self.listPersonSet.contains(where: {$0.firstName==prenom})
    }
    
    /// PersonSet×String→Bool
    /// True si une Person avec les mêmes prénoms et noms appartient à l’ensemble
    func contains(prenom: String, nom: String) -> Bool {
        return self.listPersonSet.contains(where: {$0.lastName==nom && $0.firstName==prenom})
    }
    
    /// PersonSetxStringxStringxDate->Bool
    /// True si une Person avec les mêmes prénom, nom et date de naissance appartient à l’ensemble
    func contains(prenom: String, nom: String, date: Date) -> Bool {
        let person: Person = Person(lastName: nom, firstName: prenom, birthdate: date)
        return contains(person: person)
    }
    
    /// PersonSet×Person→Int?
    /// retourne l’index de la Person dans l’ensemble qui a les mêmes prénom, nom et date de naissance
    func indexOf(person: Person) -> Int? {
        var j: Int = 0
        var index: Int? = nil
        while(index == nil) {
            if (listPersonSet[j] == person) {
                index=j
            }
            j += 1
        }
        return index
    }
    
    /// PersonSet×String→[Person]
    /// retourne un table avec toutes les Persons avec le même prénom
    func look(prenom: String) -> [Person] {
        var res: [Person] = []
        var it = self.makeIterator()
        while let person = it.next() {
            if(person.firstName == prenom) {
                res.append(person)
            }
        }
        return res
    }
    
    /// PersonSet×String→[Person]
    /// retourne un table avec toutes les Persons avec le même nom
    func look(nom: String) -> [Person] {
        var res: [Person] = []
        var it = self.makeIterator()
        while let person = it.next() {
            if(person.lastName==nom) {
                res.append(person)
            }
        }
        return res
    }
    
    /// PersonSet×StringxString→[Person]
    /// # retourne un tableau de toutes les Persons avec les mêmes prénoms et noms
    func look(nom: String, prenom: String) -> [Person] {
        var res: [Person] = []
        var it = self.makeIterator()
        while let person = it.next() {
            if(person.firstName == prenom) && (person.lastName==nom) {
                res.append(person)
            }
        }
        return res
    }
    
    /// PersonSet×String×String×(Date|Vide)→Person?
    /// retourne la Person avec ces prénom, nom et date de naissance qui appartient à cette ensemble, ou Vide si elle n’y appartient pas
    func look(nom: String, prenom: String, date: Date?) -> Person? {
        var it = self.makeIterator()
        while let person = it.next() {
            if(person.firstName == prenom) && (person.lastName==nom) && (person.birthdate==date) {
                return person
            }
        }
        return nil
    }
    
}


struct ItPersonSet : IteratorProtocol {
    
    private var current: Int = 0
    private let set: PersonSet
    
    fileprivate init(_ s : PersonSet) {
        self.set = s
    }
    
    public mutating func reset() -> ItPersonSet {
        self.current = 0
        return self
    }
        
    public mutating func next() -> Person? {
        guard self.current < self.set.count else {
            return nil
        }
        self.current += 1
        let nextPerson = self.set.listPersonSet[self.current]
        return nextPerson
    }
    
    public func currentPerson() -> Person? {
        guard self.current < self.set.count else {
            return nil
        }
        let person = self.set.listPersonSet[self.current]
        return person
    }
        
    public var end : Bool {
        return self.current<self.set.count
    }
}*/

//
//  Person.swift
//  TD1
//
//  Created by Luca Debeir on 12/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import Foundation
import CoreData

extension Person {

    static func getAll() throws -> [Person] {
        let request: NSFetchRequest<Person> = Person.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor(key: "lastName", ascending: true)]
        do {
            let person: [Person] = try CoreDataManager.context.fetch(request)
            return person
        } catch let error as NSError {
            throw error
        }
    }
    
    static func create(withNom: String, withPrenom: String) throws -> Person {
        
        let person = Person(context: CoreDataManager.context)
        
        /// nom du contactPerso
        person.lastName = withNom
        /// prenom du contactPerso
        person.firstName = withPrenom
        do{
            try CoreDataManager.save()
        }catch let error as NSError{
            throw error
        }
        return person
    }
    
    func edit(withNom: String, withPrenom: String) throws {
        /// nom du contactPerso
        self.lastName = withNom
        /// prenom du contactPerso
        self.firstName = withPrenom
        do{
            try CoreDataManager.save()
        }catch let error as NSError{
            throw error
        }
    }
    
}

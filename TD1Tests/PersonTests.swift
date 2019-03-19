//
//  PersonTests.swift
//  TD1Tests
//
//  Created by Luca Debeir on 18/03/2019.
//  Copyright © 2019 Luca Debeir. All rights reserved.
//

import XCTest
@testable import TD1

class PersonTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testFullName() {
        let p: Person = Person(lastName: "Debeir", firstName: "Luca", birthdate: nil)
        XCTAssertEqual(p.fullName, "Luca Debeir")
    }
    
    func testAge() {
        var component = DateComponents()
        component.year = 1996
        component.month = 2
        component.day = 12
        let currentDate: Date? = Calendar.current.date(from: component)
        var component2 = DateComponents()
        component2.year = 1996
        component2.month = 2
        component2.day = 12
        let currentDate2: Date? = Calendar.current.date(from: component2)
        
        let person = Person(lastName: "Debeir", firstName: "Luca", birthdate: currentDate)
        
        XCTAssertTrue(person.birthdate == currentDate, "Erreur, pas la bonne date1")
        XCTAssertTrue(person.birthdate == currentDate2, "Erreur, pas la bonne date2")
    }
    
    func testEqual() {
        let p1: Person = Person(lastName: "Debeir", firstName: "Luca", birthdate: nil)
        let p2: Person = Person(lastName: "Debeir", firstName: "Luca", birthdate: nil)
        XCTAssertEqual(p1.fullName, p2.fullName)
        XCTAssertEqual(p1.birthdate, p2.birthdate)
    }
    
    func testDiff() {
        var component = DateComponents()
        component.year = 1996
        component.month = 2
        component.day = 12
        let currentDate: Date? = Calendar.current.date(from: component)
        let p1: Person = Person(lastName: "Debeir", firstName: "Luca", birthdate: currentDate)
        let p2: Person = Person(lastName: "Serafin", firstName: "Solène", birthdate: nil)
        XCTAssertNotEqual(p1.fullName, p2.fullName)
        XCTAssertNotEqual(p1.birthdate, p2.birthdate)
    }

}

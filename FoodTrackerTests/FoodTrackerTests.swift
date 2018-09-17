//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by iPhone on 8/28/18.
//  Copyright © 2018 iPhone. All rights reserved.
//

import XCTest
//@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    func testMealInitialization()
    {
        //Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //Failure cases.
        let noName  = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Emty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating) 
    }

    
}/*Fin de la clase*/

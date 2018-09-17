//
//  Meal.swift
//  FoodTracker
//
//  Created by iPhone on 9/17/18.
//  Copyright © 2018 iPhone. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String = ""
    var photo: UIImage?
    var rating: Int
    
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0  {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}

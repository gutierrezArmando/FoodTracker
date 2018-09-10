//
//  RatingControl.swift
//  FoodTracker
//
//  Created by ic on 9/10/18.
//  Copyright © 2018 iPhone. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5
    {
        didSet {
            setupButtons()
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    //MARK: Initialization
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder)
    {
        super.init(coder: coder)
        setupButtons()
    }
    
    private func setupButtons()
    {
        for button in ratingButtons
        {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        ratingButtons.removeAll()
        
        //Load Buttons Images
        let bundle = Bundle(for: type(of: self))
        let filledStar =  UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        
        let emptyStar =  UIImage(named: "emptyStar", in: bundle, compatibleWith: self.traitCollection)
        
        let highlightedStar =  UIImage(named: "highlightedStar", in: bundle, compatibleWith: self.traitCollection)

        
        
        for _ in 0..<starCount {
            //Create button
            let button = UIButton()
            //button.backgroundColor = UIColor.red
            
            //Set Button Images
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            //Add constraint
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //Setup  action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add the button to the stack
            addArrangedSubview(button)
            
            ratingButtons.append(button)
        }
        
        
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton)
    {
        //cmd + ctrl + space
        print("Button pressed 👍🏻")
    }

}
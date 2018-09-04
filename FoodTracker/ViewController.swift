//
//  ViewController.swift
//  FoodTracker
//
//  Created by iPhone on 8/28/18.
//  Copyright © 2018 iPhone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton){
        mealNameLabel.text = "Default Text"
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    
    override func viewDidLoad() {
        //Este metodo solo se ejecuta una vez, al iniciarse la aplicacion
        super.viewDidLoad()
        
        //Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


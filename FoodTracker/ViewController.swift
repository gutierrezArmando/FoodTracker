//
//  ViewController.swift
//  FoodTracker
//
//  Created by iPhone on 8/28/18.
//  Copyright © 2018 iPhone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
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
    
    @IBAction func selectImagePhotoLibrary(_ sender: Any) {
        //Hide the keyboard
        nameTextField.resignFirstResponder()
        
        //UIImagePrickerController is a view controller that lets a user pick a media from their photo library
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.sourceType = .photoLibrary
        
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
    //MARK: UIImagePcikerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //Dismiss the picker if the user canceled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //The info dictionary contains multiple rpresentations of the image, and this use the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage

        //Set photoImageView to display the selected image.
        photoImageView.image = selectedImage

        //Dismiss picker
        dismiss(animated: true, completion: nil)
    }
}

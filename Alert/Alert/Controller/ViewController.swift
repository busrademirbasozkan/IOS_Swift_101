//
//  ViewController.swift
//  Alert
//
//  Created by Büşra Özkan on 21.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passAgainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signinButton(_sender:UIButton){
        
        if nameTextField.text == "" {
            alertFunc (titleInput:"Error!", messageInput:"Username not found")
        } else if passwordTextField.text == "" {
            alertFunc (titleInput:"Error!", messageInput:"Password not found")
        } else if passAgainTextField.text != passwordTextField.text {
            alertFunc (titleInput:"Error!", messageInput:"Password not match")
        } else {
            alertFunc (titleInput:"Success", messageInput:"User found")
        }}
    
    func alertFunc (titleInput:String, messageInput:String){

        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }

}


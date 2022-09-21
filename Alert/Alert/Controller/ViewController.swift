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
        // Do any additional setup after loading the view.
    }

    @IBAction func signinButton(_sender:UIButton){
        
        if nameTextField.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passAgainTextField.text != passwordTextField.text {
            let alert = UIAlertController(title: "Error!", message: "Password do not match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Success", message: "User found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
    }

}


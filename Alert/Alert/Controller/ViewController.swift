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
        
        let alert = UIAlertController(title: "Error!", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        self.present(alert, animated: true, completion: nil)
        
    }

}


//
//  ViewController.swift
//  NoteTaker
//
//  Created by Büşra Özkan on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let name = storedName as? String {
            nameLabel.text = "Name: \(name)"
        }
        if let birthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(birthday)"
        }
        
        
    }

    @IBAction func saveButton(_sender: UIButton){
        UserDefaults.standard.set(nameTextField.text, forKey: "Name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "Birthday")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
    }
    
    @IBAction func deleteButton(_sender: UIButton){
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name:"
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday:"
        }
        
    }

}


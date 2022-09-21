//
//  ViewController.swift
//  SegueApp
//
//  Created by Büşra Özkan on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ViewControllerLabel: UILabel!
    @IBOutlet weak var NameTextField: UITextField!
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func NextButton(_sender: UIButton){
        userName = NameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.MyData = userName
        }
        
    }
    
}


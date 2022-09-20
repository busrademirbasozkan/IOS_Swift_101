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

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func NextButton(_sender: UIButton){
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
}


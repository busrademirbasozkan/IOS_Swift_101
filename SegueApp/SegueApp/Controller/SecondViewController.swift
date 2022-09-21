//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Büşra Özkan on 20.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var SecondVCLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    var MyData = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLabel.text = "Name: \(MyData)"

    }
    

}

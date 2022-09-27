//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Büşra Özkan on 27.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var VanGoghLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self , action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }


    @objc func changePic(){
        imageView.image = UIImage(named: "VanGogh2")
    }
}


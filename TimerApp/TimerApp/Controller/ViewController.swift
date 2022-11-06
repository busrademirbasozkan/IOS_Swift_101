//
//  ViewController.swift
//  TimerApp
//
//  Created by Büşra Özkan on 27.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }


    @objc func timerFunc(){
        counter = counter - 1
        timeLabel.text = "Time : \(counter)"
        
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time is Over!!!"
        }
        
        
    }
}


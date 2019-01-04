//
//  ViewController.swift
//  Dicee
//
//  Created by Yiyang Zhu on 1/4/19.
//  Copyright © 2019 yiyangzhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    
    @IBOutlet weak var dice2: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateDice()
        }
    }
    
    func updateDice(){
        let number1 = Int.random(in:1...6)
        let number2 = Int.random(in:1...6)
        dice1.image = UIImage(named: "dice\(number1)")
        dice2.image = UIImage(named: "dice\(number2)")
    }
    
}


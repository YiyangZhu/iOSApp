//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Yiyang Zhu on 1/4/19.
//  Copyright © 2019 yiyangzhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButton(_ sender: Any) {
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            updateImage()
        }
    }
    
    func updateImage(){
        let number = Int.random(in: 1...5)
        answerImage.image = UIImage(named: "ball\(number)")
    }
    
}


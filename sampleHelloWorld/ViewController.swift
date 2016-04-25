//
//  ViewController.swift
//  sampleHelloWorld
//
//  Created by satoshiii on 2016/04/25.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var tap_a: UIButton!
    @IBOutlet weak var tap_b: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "こんばんは！"
        
        myLabel.text = "Good,evening!"
        
    
    }
    @IBAction func tap1(sender: UIButton) {
        myLabel.text = "thank you tap!"
        print("1タップ！")
    }
    
    @IBAction func tap2(sender: UIButton) {
        myLabel.text = "tap!tap!tap!"
        print("2tap!")
    }
//    println()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


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
    
    //画面起動時、最初の１回だけ起きる
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "こんばんは！"
        
        print(myLabel.text)
        
        myLabel.text = "Good,evening!"
        
        print(myLabel.text)
    
    }
    
    //buttonが押された時
    @IBAction func tap1(sender: UIButton) {
        myLabel.text = "thank you tap!"
        print("1タップ！")
    }
    
    @IBAction func tap2(sender: UIButton) {
        myLabel.text = "tap!tap!tap!"
        print("2tap!")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


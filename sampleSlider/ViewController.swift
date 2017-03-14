//
//  ViewController.swift
//  sampleSlider
//
//  Created by satoshiii on 2016/04/27.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderChanged(sender: UISlider) {
        // スライダーの値が変わった時
        // print("スライダのつまみが動いたよ！")
        // sender:イベントを発生を発生させている部品そのもの
        print(sender.value)
        //.valueはこの場合つまみの位置の意
        
        // TODO:音量(sender.value)が0.5より小さい場合、「音が小さいです、それ以外の場合「音が大きいですとデバッグエリアに表示させてください。」
        
        if sender.value < 0.5{
            print("「音が小さいです！」")
        }else{
            print("「音が大きいです！」")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


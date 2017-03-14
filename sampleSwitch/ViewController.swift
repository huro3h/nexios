//
//  ViewController.swift
//  sampleSwitch
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

    @IBAction func switchChanged(sender: UISwitch) {
        
        // print("スイッチが切り替わったよ！")
        // sender:イベントを発生させている部品そのもの
        // print(sender.on)
        
        // TODO:スイッチON時に「スイッチオン」、OFF時に「スイッチオフ」をデバッグエリアに表示するif文表示
        if sender.isOn{
            print("スイッチオン")
        }else{
            print("スイッチオフ")
        }
        // sender.onにboolan型(TorF)が入っているので
        // 上記のような書き方でもOK!
        // ちなみに.onは指定できるけど、.offはないよ！
        
        // 解答例
        if sender.isOn == true{
            print("すいっちおん")
        }else{
            print("すいっちおふ")
        }
    
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


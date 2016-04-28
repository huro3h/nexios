//
//  ViewController.swift
//  sampleTextView
//
//  Created by satoshiii on 2016/04/28.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // textプロパティに文言を代入している。
        myTextView.text = "こんにちは Hello,World!"
        
        // 文字色を変えてみる(オブジェクト名.プロパティ名)
        // UIColor 色を変えるオブジェクト名.blueColor関数()を呼び出している
        myTextView.textColor = UIColor.blueColor()
        
        // フォントを指定する
        myTextView.font = UIFont(name: "AmericanTypewriter", size: 20)
        
        // 文字寄せ位置（デフォルトは左寄せ）
        myTextView.textAlignment = NSTextAlignment.Center
        
        // TODO:Helloを10回表示する(PHPのfor文)
        for var i=1 i <=10 i++ {
            myTextView.text = myTextView + "Hello"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


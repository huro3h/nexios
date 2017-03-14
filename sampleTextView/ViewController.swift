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
        myTextView.text = "Hello,World!"
        
        // 文字色を変えてみる(オブジェクト名.プロパティ名)
        // UIColor 色を変えるオブジェクト名.blueColor関数()を呼び出している
        myTextView.textColor = UIColor.blueColor()
        
        // フォントを指定する
        myTextView.font = UIFont(name: "AmericanTypewriter", size: 20)
        
        // 文字寄せ位置（デフォルトは左寄せ）
        myTextView.textAlignment = NSTextAlignment.Center
        
        // TODO:Helloを10回表示する(PHPのfor文)
        for var i = 1; i <= 10; i++ {
            // 2回表示されないのは、元から入っているhello-が「上書き」されるから！
            myTextView.text = myTextView.text + "Hello"
        }
        
        // TODO:こんにちはn(改行 → \r)で10個メッセージを表示
        // 変数も改行も""の中に入れてやること！変数は()付で！
        var num = 1
        for var i = 1; i <= 10; i++ {
            myTextView.text = myTextView.text + "こんにちは\(num)\r"
            num++
        }
        
        // 回答例
//        for var n = 1; n <= 10; n++ {
//            myTextView.text = myTextView.text + "こんにちは\(n)\r"
//        }
        
        //　while文
        var n = 0
        while n < 10 {
            myTextView.text = myTextView.text + "こんにちは\(n)\r"
            n++
        }
        

    }
    
    @IBAction func tapClose(sender: UIButton) {
        // キーボードを閉じる
        myTextView.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  sampleHensu
//
//  Created by satoshiii on 2016/04/26.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    // 画面の起動時に紐づく
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 変数宣言
        var a = 10
        
        // if文
        if a == 1 {
            print("a=1だよ！")
        }else{
            print("a=1ではないよ")
        }
        
        var b = 20
        
        var ans = a + b
        
        print("answer=\(ans)")
        
        var myStr = "Hello"
        print("文字列の値は\(myStr)です")
        
        // MARK:ここは大事なポイント(しおりのようなもの)
        // データ型指定
        // 数字しか使いたくない時などに最初に型を指定することでエラーを防ぐ
        
        var myData1:Int = 10         // 整数型
        var myData2:Double = 10.1    // 浮動小数点型
        var myData3:String = "Hello" // 文字型
        var myData4:Bool = true      // Boolean型
        
        // myData5 = "test"
        // 最初に宣言しとかないと上記のように種類がわからず、エラーが出る
        
        // 日付型(何月何日など)
        var myDate = NSDate()
        print("日付の値は\(myDate)です")
        
        // 配列
        // PHPと違い、print関数で中身を表示してくれる。
        var myArray = ["A","B","C"]
        print("配列の値は\(myArray)です")
        
        // TODO:配列からフルーツの名前を取り出し、デバッグエリアに順に表示せよ
        var fruitsArray =
            ["mango","orange","watermelon","banana","ranbutan"]
        
        // fruitsArrayにappleを追加！(要素の追加)
        fruitsArray.append("apple")
        
        
        // fruitsArrayからwatermelonを削除！(要素の削除並びに、位置の指定)
        fruitsArray.removeAtIndex(2)
        
//        print(fruitsArray[0])
//        print(fruitsArray[1])
//        print(fruitsArray[2])
//        print(fruitsArray[3])
//        print(fruitsArray[4])
        
        // for ... in 高速列挙(繰り返し文)で表示する(PHPでいうforeach文)
        // val 要素を一時的に入れる変数(PHPのas)(PHPの時と書き方が異なる)
        // 配列の要素が増えても増えた分だけ表示してくれる
        for val in fruitsArray{
            print(val)
            
        // 途中でfor inを入れることでデバッグにも使える
        // (出てきた2つの結果を比較するなど)
            
        // MARK:デバッグの方法その3(print文以外のやり方)
        // breakpointで止めた時、デバッグエリアに字を入力するやり方もある。
        }
        
        // 簡単な文字列連結の方法
        print("Hello" + "Hello")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


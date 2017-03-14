//
//  ViewController.swift
//  sampleDictionary
//
//  Created by satoshiii on 2016/04/27.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ディクショナリー（連想配列）
        var intDict = ["a":1,"b":2,"c":3]      // 文字列:整数の辞書データ
        var strDict = ["a":"A","b":"B","c":"C"]// 文字列:文字列の辞書データ
        
        print(intDict["a"])
        
        // データ個数の取得方法 count関数
        var cnt = strDict.count
        print(cnt)
        
        print(strDict["b"])
        
        // 定数（ある値を別な意味として定義したい時に使用する）
        // （値を固定したい時に使う）
        let OK = 1
        if cnt == OK {
            print("OKです！")
        }
        
        // 型変換
        var intA = 100          //整数
        var strA = String(intA) //整数 → 文字列
        
        var strB = "100"        //文字列
        var intB = Int(strB)    //文字列 → 整数
        
        // 計算する時に整数型にしておくと、そのまま計算ができるから
        // 使用したい関数で指定する型にする時　など型変換が必要になる！
        
        // タブル（たぶる！代入方法）
        // たくさん入れたい変数がある場合、まとめて代入することができて便利！
        // カンマ(,)区切りで複数個一気に初期値を代入できるよ！
        var (a,b)=(1,2)
            print(a)
            print(b)
        
        // nil("?" をつけることで、代入が可能になる！)
        var myStr1:String? = nil //Optional Value(?:nilが入るかもよ?の意 実際に入れる事態になった時などに使う)
        var myStr2:String! = nil //Optional Value(!:nilが入らないことをプログラマが保証するのでエラーを出さないようにします「してほしい」)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


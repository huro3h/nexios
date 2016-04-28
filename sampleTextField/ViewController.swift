//
//  ViewController.swift
//  sampleTextField
//
//  Created by satoshiii on 2016/04/27.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Returnキーが押された時
    //(このメソッドを作るとキーボードが閉じる)
    //DidendOnExitに紐づくメソッドでキーボードが閉じる
    
    @IBAction func tapReturn(sender: UITextField) {
//        let st = label1.text
////        var strin = tapReturn
//            print(st!.rangeOfString("test"))
//        if (st!.rangeOfString("test")) != nil{
//            label1.text = "testです"
//        }else{
//            label1.text = textfield1.text
//        }
        

//        TODO:ポイント
//        代入するのはlabelではなく、sender.textを
//        入れるのに気づけるかどうか
//        labelを代入すると表示されてから判定されるので
//        1テンポ遅れたおかしな動作になる
//        if文の条件分岐で何でもいいので定数or変数への代入式を書く
//        この際、nilとの比較はしなくてもよい
        
        
        // 回答例
        
        let str = sender.text
        if let r = str!.rangeOfString("test"){
            label1.text = "testです"
        }else{
            label1.text = str
        }
        // 入力後、入力欄を空にする
        sender.text = " "
        
    }
    
    @IBAction func reset2(sender: UIButton) {
        label1.text = " "
    }
    // TODO:宿題ラベルを用意して、testという文章が含まれていたら「testですと」ラベルに表示、それ以外は入力された時をそのまま表示しましょう。
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


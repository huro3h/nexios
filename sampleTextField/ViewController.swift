//
//  ViewController.swift
//  sampleTextField
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
    
    //Returnキーが押された時
    //(このメソッドを作るとキーボードが閉じる)
    //DidendOnExitに紐づくメソッドでキーボードが閉じる
    @IBAction func tapReturn(sender: UITextField) {
        print(sender.text)
        // TODO:宿題ラベルを用意して、testという文章が含まれていたら「testですと」ラベルに表示、それ以外は入力された時をそのまま表示しましょう。
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


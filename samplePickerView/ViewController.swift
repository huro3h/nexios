//
//  ViewController.swift
//  samplePickerView
//
//  Created by satoshiii on 2016/04/28.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

// プロトコルを指定-プロトコルとは？
// 自分から画面に問い合わせをしてくる部品
// UIPickerViewにはその都度指示が必要になる（処理をやりとりする、その際にプロトコルが必要になる）
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    // データ（選択肢）を「配列」で用意する
    // 外に出したのはメソッド内で宣言した変数はそのメソッドの中でしか使えないから！
    // メンバ変数（同じクラス内の複数メソッドで使用可能）
    var tealist = ["ダージリン","アールグレイ","アッサム","オレンジペコ","あったかいほうじ茶"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // プロトコルを使う準備
        // self(viewControllerのこと。PHP[フレームワーク]でいう$thisと全く同じ動きをする)
        // 指示を仰ぐメソッドはviewControllerに書かれているよーの意
        myPicker.dataSource = self;
        myPicker.delegate = self;
        
        // ローカル変数（１つのメソッド内、宣言したメソッドの中のみで使用可能）
        
    }
    
    // ピッカービューの列数を返すメソッド
    // 聞かれた結果、viewControllerの返答
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // ピッカービューの行数を返すメソッド
    // 上記同様、viewControllerの返答
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // tealistの中身（数）を取得、これにより柔軟に対応できる。
        return tealist.count
        
    }
    
    // ピッカービューに表示する文字のセット
    // 上記同様、viewControllerの
    // この場合、rowは行番号の意[0]からスタート
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tealist[row]
    }
    
    // ピッカービューで選択された時に行う処理
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // 配列の行数ズレを表示で直す場合、変数をメソッド内で宣言後
        // カウントしている変数に1を足してやるとうまくいく
        let i = row+1
        print("選択されたのは\(i)行目の\(tealist[row])です")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


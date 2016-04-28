//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by satoshiii on 2016/04/28.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 名前をつける時には上の方へ、アクションは下へ
    @IBOutlet weak var myDatePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 選択肢を日付のみにセット
        myDatePicker.datePickerMode = UIDatePickerMode.Date
        
        // デフォルトの初期値を今日以外に設定する方法
        let df = NSDateFormatter()
        
        // 日付のフォーマットを指定
        // スラッシュで区切る日付に(下で文字を日付として認識させる為に行っている)
        df.dateFormat = "yyyy/MM/dd"
        
        // 2016/04/01を指定(文字からdate型に変更している)
        myDatePicker.date = df.dateFromString("2016/04/01")!
        
        // 選択肢の範囲を指定する
        // 最小値と最大値はnil(無限)でもエラーになることはない為 ! とか ? がなくても実は動く。
        myDatePicker.minimumDate = df.dateFromString("2016/01/01")
        myDatePicker.maximumDate = df.dateFromString("2016/12/31")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


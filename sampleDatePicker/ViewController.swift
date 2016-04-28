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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


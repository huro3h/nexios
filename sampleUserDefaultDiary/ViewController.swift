//  ViewController.swift
//  sampleUserDefaultDiary
//
//  Created by satoshiii on 2016/05/13.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class ViewController: UIViewController {
	
	// 1.各パーツに名前付け
	@IBOutlet weak var txtTitle: UITextField!
	@IBOutlet weak var txtDate: UITextField!
	@IBOutlet weak var txtCategory: UITextField!
	@IBOutlet weak var txtDiary: UILabel!
	@IBOutlet weak var btnSave: UIButton!
	
	var diaryList = ["title1","title2","title3"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print(diaryList)
	
	}
	
	// 2.保存ボタン作成
	@IBAction func tapBtnSave(sender: UIButton) {
		
		// 3.タイトルを追加
		diaryList.append(txtTitle.text!)
		print(diaryList)
		
		// 4.UserDefaltに保存
		
		// ユーザーデフォルトを用意する(情報の保管場所を用意)
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// データを書き込んで("myString"箱の名前)
		myDefault.setObject(diaryList, forKey: "diaryList")
		
		// 即反映させる(きちんと保存して使用時すぐ出せるように)
		myDefault.synchronize()
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//
//	}


}


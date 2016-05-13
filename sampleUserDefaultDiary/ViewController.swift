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
	
	// var diaryList = ["title1","title2","title3"] //メンバ変数、要復習！
	// jsonでは{}使用だが、xcodeでは[]使用
	var diaryList =
		[["title":"title1","date":"2016-5-13"],
		["title":"title2","date":"2016-5-14"],
		["title":"title3","date":"2016-5-15"]]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 8.ユーザーデフォルトから保存されたデータを取り出す
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// 番外.UserDefault全削除する(1回実行させたらコメントアウトさせておくこと。)
		// でないと常に全削除しちゃう...(´・ω・`)
		var appDomein:String = NSBundle.mainBundle().bundleIdentifier!
		myDefault.removePersistentDomainForName(appDomein)
		
		
		// nilが存在するケース(一番最初、何もデータが入力されていない時=保存ボタンが１回も押されていない時)
		if (myDefault.objectForKey("diaryList") != nil){
		
			// 9.データを呼び出して、その後ろに新たなタイトルを追加
			diaryList = myDefault.objectForKey("diaryList") as! [Dictionary]
		}
	}
	
	// 2.保存ボタン作成
	@IBAction func tapBtnSave(sender: UIButton) {
		
		// 3.タイトルと日付を追加
		diaryList.append(["title":txtTitle.text!,"date":txtDate.text!])
		
		print(diaryList)
		
		// 4.ここからUserDefaltに保存作業
		// 5.ユーザーデフォルトを用意する(情報の保管場所を用意)
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// 6.データを書き込んで("myString"箱の名前)
		myDefault.setObject(diaryList, forKey: "diaryList")
		
		// 7.即反映させる(きちんと保存して使用時すぐ出せるように)
		myDefault.synchronize()

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//
//	}


}


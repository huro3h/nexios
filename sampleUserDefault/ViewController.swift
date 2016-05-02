//
//  ViewController.swift
//  sampleUserDefault
//
//  Created by satoshiii on 2016/05/02.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// ユーザーデフォルトから保存されたデータを取り出す
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// データを呼び出して(↑でオブジェクト化したもの)
		var myStr = myDefault.stringForKey("myString")
		
		// 文字列が入っていたら表示する
		print(myStr)
	}
	@IBAction func tapReturn(sender: UITextField) {
		
		// ユーザーデフォルトを用意する(情報の保管場所を用意)
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// データを書き込んで("myString"箱の名前)
		myDefault.setObject(sender.text, forKey: "myString")
		
		// 即反映させる(きちんと保存して使用時すぐ出せるように)
		myDefault.synchronize()
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


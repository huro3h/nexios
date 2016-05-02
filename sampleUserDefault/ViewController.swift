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
		// Do any additional setup after loading the view, typically from a nib.
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


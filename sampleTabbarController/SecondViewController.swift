//
//  SecondViewController.swift
//  sampleTabbarController
//
//  Created by satoshiii on 2016/05/05.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("S.V.Controllerが表示されました！")
	}

	// Appear（表示される度に処理が実行される）
	override func viewWillAppear(animated: Bool) {
		
		
		// print("F.V.Controllerが「表示」されました！")
		// 2.AppDelegateにアクセスする為の準備をして
		var myAp = UIApplication.sharedApplication().delegate as! AppDelegate
		// 3.プロパティの値を書き換える
		myAp.myCount++
		// 4.プロパティの値を読み出す
		print("2画面目 count=\(myAp.myCount)")
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


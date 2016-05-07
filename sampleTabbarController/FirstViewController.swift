//
//  FirstViewController.swift
//  sampleTabbarController
//
//  Created by satoshiii on 2016/05/05.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// 起動しぱなしなのでLoadは最初の１回のみ表示、処理する
		// 初期設定や１回きりの設定datapikkerなどはこちらに書くのが良い
		// appearに書くと毎回設定されてしまい、余計な処理が発生する
		print("F.V.Controllerが起動されました！")
		
		// バッジを表示させる！
		// tabBarItem.badgeValue = "\(myAp.myCount)"
	}
	
	// Appear（表示される度に処理が実行される）
	override func viewWillAppear(animated: Bool) {
		// print("F.V.Controllerが「表示」されました！")
		var myAp = UIApplication.sharedApplication().delegate as! AppDelegate
		tabBarItem.badgeValue = "\(myAp.myCount)"
	}

	
	override func viewWillDisappear(animated: Bool){
		// 画面切り替わり時にバッジ消す
		tabBarItem.badgeValue = nil
	
		// 2.AppDelegateにアクセスする為の準備をして
		var myAp = UIApplication.sharedApplication().delegate as! AppDelegate
		// 3.プロパティの値を書き換える
		myAp.myCount++
		// 4.プロパティの値を読み出す
		print("1画面目 count=\(myAp.myCount)")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


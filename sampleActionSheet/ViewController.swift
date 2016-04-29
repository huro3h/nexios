//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by satoshiii on 2016/04/29.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	
	@IBAction func tapBtn(sender: UIButton) {
		// アクションシートを作成
		var alertController = UIAlertController(
		title: "タイトル",
		message: "メッセージ",
		// ここを.ActionSheetにする↓
		preferredStyle: .ActionSheet)
		
		// 通常ボタンを追加
		alertController.addAction(UIAlertAction(
			title: "アクション",
			style: .Default,
			handler: { action in print("OK")}))
		
		// アクションシートを表示
		presentViewController(alertController, animated: true, completion: nil)
		}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


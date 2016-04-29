//  ViewController.swift
//  sampleActionSheet
//
//  Created by satoshiii on 2016/04/29.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	
	@IBAction func tapBtn(sender: UIButton) {
		// アクションシートを作成
		var alertController = UIAlertController(
		title: "行くアクティビティ",
		message: "どれにする？",
		// ここを.ActionSheetにする↓
		preferredStyle: .ActionSheet)
		
		// 通常ボタンを追加
		alertController.addAction(UIAlertAction(
			title: "ヨガ",
			style: .Default,
			handler: { action in print("OK")}))
		
		// 通常ボタンを追加
		alertController.addAction(UIAlertAction(
			title: "バスケ",
			style: .Default,
			handler: { action in print("OK")}))
		
		// キャンセルボタン追加
		// キャンセルボタンは下に少し間を空けて表示される
		// キャンセルボタンはどこで書いても必ず一番下に表示
		alertController.addAction(UIAlertAction(
			title: "今日はやめとく",
			style: .Cancel,
			handler: { action in print("キャンセル")}))
		
		// 削除ボタン追加
		alertController.addAction(UIAlertAction(
			title: "ムエタイ",
			style: .Destructive, //.の前は省略可
			handler: { action in print("Destructive")}))
		
		// アクションシートを表示
		presentViewController(alertController, animated: true, completion: nil)
		}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


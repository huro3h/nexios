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

	@IBOutlet weak var myLabel: UILabel!
	
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
			// 押した時に表示させる時は ↓ に入力
			handler: { action in self.myAction("ヨガ")}))
		
		
		// 通常ボタンを追加
		alertController.addAction(UIAlertAction(
			title: "バスケ",
			style: .Default,
			handler: { action in self.myAction("バスケ")}))
		
		// キャンセルボタン追加
		// キャンセルボタンは下に少し間を空けて表示される
		// キャンセルボタンはどこで書いても必ず一番下に表示
		alertController.addAction(UIAlertAction(
			title: "今日はやめとく",
			style: .Cancel,
			handler: { action in self.myLabel.text = "そんなこと言わず行こう！"}))
		
		// 削除ボタン追加
		alertController.addAction(UIAlertAction(
			title: "ムエタイ",
			style: .Destructive, //.の前は省略可
			handler: { action in self.myLabel.text = "...行こう！"}))
		
		// アクションシートを表示
		presentViewController(alertController, animated: true, completion: nil)
		}
	
	// 通常ボタンを選択した時に呼ばれるメソッド
	// 引数を使用して表示をスマートに！
	func myAction(var activity:String){
			myLabel.text = "\(activity)に行こう！"
			// activity -> 指定されたアクティビティ名
		}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


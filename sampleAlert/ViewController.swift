//
//  ViewController.swift
//  sampleAlert
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
		// アラートを作る　(:引数を説明する処理)
		var alertController = UIAlertController(title: "タイトル", message: "めっせーじ", preferredStyle: .Alert)
		
		// OKボタンを追加する
		// Controllerに対して、actionを実行させている
		alertController.addAction(UIAlertAction(
			title: "OK",
			style: .Default,
			//　押された時に何をするかの意
			handler: {action in self.myOK()}))
		
		// TODO:キャンセルボタンを追加しよう(押されたら、キャンセルとデバッグエリアに表示されるように)
		alertController.addAction(UIAlertAction(
			title: "Cancel",
			style: .Cancel,
			// 下の変数(myCancel)をここで呼び出すので、新たにキャンセル表示の処理を書く必要はない。
			handler: { action in self.myCancel()}))
			// print("キャンセル")　←これいらない
		
		// アラートを表示する
		// 実は画面の１つ、標準の画面の上に画面を乗せて表示させているイメージ
		presentViewController(alertController, animated: true, completion: nil)
		
	}
	
	//上記の{}内に間違って以下のメソッドを作らないように注意！
	// OKが押された時に呼ばれるメソッド
	func myOK() {
		print("OK")
	}
	// キャンセルが選択された時に呼ばれるメソッド
	func myCancel() {
		print("キャンセル")
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


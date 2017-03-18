//
//  ViewController.swift
//  sampleUserDefault
//
//  Created by satoshiii on 2016/05/02.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

	@IBOutlet weak var myTextField: UITextField!
	@IBOutlet weak var myWebView: UIWebView!
	@IBOutlet var mySwipe: UISwipeGestureRecognizer!
	@IBOutlet weak var myFBShare: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// ユーザーデフォルトから保存されたデータを取り出す
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// データを呼び出して(↑でオブジェクト化したもの)
		var myStr = myDefault.stringForKey("myString")
		
		// 文字列が入っていたら表示する
		// print(myStr)
		myTextField.text = myStr // 取り出した文字を表示
	}
	
	
	@IBAction func tapReturn(sender: UITextField) {
		if myTextField.text == "" {
			
			// アラートを作る　(:引数を説明する処理)
			var alertController = UIAlertController(title: "Caution", message: "何か入力してね！", preferredStyle: .Alert)
		
			// OKボタンを追加する
			// Controllerに対して、actionを実行させている
			alertController.addAction(UIAlertAction(
			title: "OK",
			style: .Default,
			
			//　押された時に何をするかの意
			handler: {action in print("OK")}))
			
			//アラートを表示する
			presentViewController(alertController, animated: true, completion: nil)
			return
		}
		
			// ユーザーデフォルトを用意する(情報の保管場所を用意)
			var myDefault = NSUserDefaults.standardUserDefaults()
		
			// データを書き込んで("myString"箱の名前)
			myDefault.setObject(sender.text, forKey: "myString")
		
			// 即反映させる(きちんと保存して使用時すぐ出せるように)
			myDefault.synchronize()
		
			// URL型に代入(string: sender.text!)
			var myURL = NSURL(string: sender.text!)
		
			// webviewに指定する為、NSURL Request型
			// のオブジェクトを作成
			var myURLReq = NSURLRequest(URL: myURL!)
		
			// webViewにセット
			myWebView.loadRequest(myURLReq)
		}

		@IBAction func closeKeyboard(sender: UISwipeGestureRecognizer) {
			self.view.endEditing(true)
		}
	
		@IBAction func tapFBButton(sender: UIButton) {
			let FacebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
			
			if let tmpStr =  myTextField.text{
				let url = NSURL(string: tmpStr)
				FacebookVC.addURL(url)
			}
			
			presentViewController(FacebookVC, animated: true, completion: nil)
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
			super.didReceiveMemoryWarning()
			// Dispose of any resources that can be recreated.
		}
	}


//
//  ViewController.swift
//  sampleWebView
//
//  Created by satoshiii on 2016/05/02.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var myTextField: UITextField!
	@IBOutlet weak var myWebView: UIWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
//		
//		// 表示したいページのURL
//		// http://www.yahoo.co.jp/
//		
//		// URL型に代入(↑のままではただの文字列)
//		var myURL = NSURL(string: "http://www.yahoo.co.jp/")
//		
//		// webviewに指定する為、NSURL Request型
//		// のオブジェクトを作成
//		var myURLReq = NSURLRequest(URL: myURL!)
//		
//		// webViewにセット
//		// オブジェクトを引数にすることによってネットから引っ張ってくる関数（エンターの動きを代わりにやっている）
//		
//		// 上記はデータ型（オブジェクト型）
//		// ちなみにNSはNextStep（会社名）の略
//		// jobsが会社を追い出された時に新たに作った会社名
//		// Objective-Cからの由来
//		myWebView.loadRequest(myURLReq)
//		
//		// TODO:テキストフィールドを1つ設置し、そこに入力されたURLのページを表示するようにカスタマイズしましょう（Returnを押したら、ページを表示するように変更する）
	}
	@IBAction func tapReturn(sender: UITextField) {
		
		// 解答例
		
		// URL型に代入(string: sender.text!)
		var myURL = NSURL(string: sender.text!)
		
		// webviewに指定する為、NSURL Request型
		// のオブジェクトを作成
		var myURLReq = NSURLRequest(URL: myURL!)
		
		// webViewにセット
		myWebView.loadRequest(myURLReq)

	}
	
	
	
	
	
	
	
	
	
	
	// ↓大事だけどこいつ邪魔 \( 'ω')/
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()

	}


}


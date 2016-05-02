//
//  ViewController.swift
//  sampleWebView
//
//  Created by satoshiii on 2016/05/02.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var myWebView: UIWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 表示したいページのURL
		// http://www.yahoo.co.jp/
		
		// URL型に代入(↑のままではただの文字列)
		var myURL = NSURL(string: "http://www.yahoo.co.jp/")
		
		// webviewに指定する為、NSURL Request型
		// のオブジェクトを作成
		var myURLReq = NSURLRequest(URL: myURL!)
		
		// webViewにセット
		// オブジェクトを引数にすることによってネットから引っ張ってくる関数（エンターの動きを代わりにやっている）
		
		// 上記はデータ型（オブジェクト型）
		// ちなみにNSはNextStep（会社名）の略
		// jobsが会社を追い出された時に新たに作った会社名
		// Objective-Cからの由来
		myWebView.loadRequest(myURLReq)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()

	}


}


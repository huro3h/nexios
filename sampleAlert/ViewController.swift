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
		// アラートを作る
		var alertController = UIAlertController(title: "タイトル", message: "めっせーじ", preferredStyle: .Alert)
		
		// OKボタンを追加する
		alertController.addAction(UIAlertAction(
			title: "OK",
			style: .Default,
			handler: {action in print("OK")}
			))
		
		// アラートを表示する
		presentViewController(alertController, animated: true, completion: nil)
		
		
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


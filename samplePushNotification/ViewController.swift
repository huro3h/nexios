
//
//  ViewController.swift
//  samplePushNotification
//
//  Created by satoshiii on 2016/05/23.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


	@IBAction func tapBtn(sender: UIButton) {
		// ローカル通知の設定
		let notification : UILocalNotification = UILocalNotification()
		
		// タイトル
		notification.alertTitle = "Fire"
		
		// 通知メッセージ
		notification.alertBody = "ファイヤー！"
		
		// Timezoneの設定
		notification.timeZone = NSTimeZone.defaultTimeZone()
		
		// 10秒後に設定
		notification.fireDate = NSDate(timeIntervalSinceNow: 3)
		
		// Notificationを登録する
		UIApplication.sharedApplication().scheduleLocalNotification(notification)
	}
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


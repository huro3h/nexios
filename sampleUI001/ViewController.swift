//
//  ViewController.swift
//  sampleUI001
//
//  Created by satoshiii on 2016/05/10.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var aView = UIView(frame: CGRectMake(0,0,100,100))
	
	// 起動画面サイズの取得
	let myBoundSize:CGSize = UIScreen.mainScreen().bounds.size
	override func viewDidLoad() {
		super.viewDidLoad()
	
	self.aView.backgroundColor = UIColor.greenColor()
	self.aView = UIView(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,250))
	self.view.addSubview(aView)
	
	}

	@IBAction func tapBtn(sender: UIButton) {
//		print("tapされた！")
		if (self.aView == UIView(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,250))){
			UIView.animateWithDuration(0.8,
				animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
					self.aView.frame = CGRectMake(0, 0, 100, 100)}
		} else {
			UIView.animateWithDuration(0.8,
				animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
					self.aView.frame = CGRectMake(0, -250, 100, 100)}
		}
		
	
	}
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}


}


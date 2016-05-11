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
	@IBOutlet weak var myBtn: UIButton!

	
	// 起動画面サイズの取得
	let myBoundSize:CGSize = UIScreen.mainScreen().bounds.size
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
	self.aView.backgroundColor = UIColor.greenColor()
	self.aView = UIView(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,250))
	self.view.addSubview(aView)
	
//	self.myBtn = UIButton!(frame: CGRectMake(0,myBoundSize.height,myBoundSize.width,250))
//	self.view.addSubview(myBtn);
	
	}

	@IBAction func tapBtn(sender: UIButton) {
		// print("tapされた！")
		if (self.aView.frame == CGRectMake(0,self.myBoundSize.height,self.myBoundSize.width,250)){
			UIView.animateWithDuration(0.5,
			animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
			self.aView.frame = CGRectMake(0,self.myBoundSize.height-250,self.myBoundSize.width,250)},
//			self.myBtn.frame = CGRectMake(self.myBtn.frame.origin.x,self.myBtn.frame.origin.y+250,self.myBtn.frame.width,self.myBtn.frame.height),
//			UIView.animateWithDuration(0.5,
//			animations: { () -> Void in
//				self.myBtn.frame = CGRectMake(0,self.myBoundSize.height-250,self.myBoundSize.width,250)},
			completion: {finished in print("出る！")})
		} else {
			UIView.animateWithDuration(0.5,
			animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
			self.aView.frame = CGRectMake(0,self.myBoundSize.height,self.myBoundSize.width,250)},
			completion: {finished in print("隠れる！")})
		}
	
	
	}
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}
}




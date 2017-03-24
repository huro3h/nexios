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
	
	// Viewが隠れてる時:false 表示されている時:true
	// を判別するフラグが入った変数を定義する。
	var openFlag = false

	
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
		// クロージャーの中はself必要、
		// 理由は非同期の為、つけないとどこの処理かがわからなくなる
		// 厳密に言うと、コード自体が終わったタイミングがわかっていない状態なので
		// completion:で終わったタイミングを検知する
		if (self.aView.frame == CGRectMake(0,self.myBoundSize.height,self.myBoundSize.width,250)){
			UIView.animateWithDuration(0.5,
			animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
			self.aView.frame = CGRectMake(0,self.myBoundSize.height-250,self.myBoundSize.width,250)
			//動かなかった原因、カンマの位置と } の位置が間違っていた
			// invoke〜 エラー ↑の理由のように ちゃんと公式通りに書けていない
			// 各括弧の位置、カンマの位置が間違っていないか注意することが必要！
			// origin. x(or y) 最初の座標を拾う
			self.myBtn.frame = CGRectMake(self.myBtn.frame.origin.x,self.myBtn.frame.origin.y-250,self.myBtn.frame.width,self.myBtn.frame.height)},
			completion: {finished in print("出る！")})
		} else {
			UIView.animateWithDuration(0.5,
			animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
			self.aView.frame = CGRectMake(0,self.myBoundSize.height,self.myBoundSize.width,250)},
//						self.myBtn.frame = CGRectMake(self.myBtn.frame.origin.x,self.myBtn.frame.origin.y-250,self.myBtn.frame.width,self.myBtn.frame.height)},
			completion: {finished in print("隠れる！")})
		}
	
	
	}
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}
}




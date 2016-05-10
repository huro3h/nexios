//
//  ViewController.swift
//  sampleAnime001
//
//  Created by satoshiii on 2016/05/10.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// アニメーション対象のView(動的追加)
	// 0,0,100,100 セルビューの位置と大きさを決めている
	let aView = UIView(frame: CGRectMake(-100,10,100,100))
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 青色に指定(これだけではまだ表示されない)
		// 白いベース上の画面にaViewが追加されていないので。。
		self.aView.backgroundColor = UIColor.blueColor()
		
		// 画面上に表示
		self.view.addSubview(aView)
	}
	
	@IBAction func tapBtn(sender: UIButton) {
		print("たっぷされたね！")
		
		// 緑色に変わるアニメーション(引数3つあるやつを選ぶ)
		// Duration:アニメーションが行われる間隔(単位:秒)
		// animations:変化後の状態
		// completion:アニメーション終了後に行う処理
		UIView.animateWithDuration(0.8,
			animations: { () -> Void in self.aView.backgroundColor = UIColor.greenColor()
			self.aView.frame = CGRectMake(0, 0, 100, 100)},
			completion: {finished in print("色が変わりました")})
	}


	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


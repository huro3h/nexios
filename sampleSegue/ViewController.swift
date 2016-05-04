//
//  ViewController.swift
//  sampleSegue
//
//  Created by satoshiii on 2016/05/04.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// カウント用の変数(メンバ変数＝特定のメソッドの中に書かずに、classの中に書く変数のこと)
	var myCount = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	// 画面が切り替わる時
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// もしセグエの名前がmySegueだったら(segueの頭を大文字で書かないように注意)
		if (segue.identifier=="mySegue"){
			// カウントアップして
			myCount++
			// 次の画面のtmpCountに、myCountの値を受け渡す
			// エラー出る理由 移動先のViewController名が間違っているから
			var newVC = segue.destinationViewController as! SecondViewController
			
			// 次画面のtmpCountにmyCountの値を代入している
			// newVCの持ち物になっているため、プロパティとも呼ばれる所以
			newVC.tmpCount = myCount
		}
	}

	@IBAction func returnMenu(segue: UIStoryboardSegue) {
	}
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


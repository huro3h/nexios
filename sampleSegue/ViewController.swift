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
	
	// 画面が切り替わる時(segueの頭を　↓大文字で書かないように注意)
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// もしセグエの名前がmySegueだったら
		if (segue.identifier=="mySegue"){
			// カウントアップして
			myCount += 1
			// 次の画面のtmpCountに、myCountの値を受け渡す
			// (もしここでエラー出るなら たぶん  移動先のViewController名が間違っている
			let newVC = segue.destination as! SecondViewController
			
			// 次画面のtmpCountにmyCountの値を代入している
			// newVCの持ち物になっているため、プロパティとも呼ばれる所以
			newVC.tmpCount = myCount
		}
	}
	
	// この画面に戻ってきた時
	@IBAction func returnMenu(_ segue: UIStoryboardSegue) {
		// myCount変数に、前の画面のtmpCountの値を受け取って
		// 戻ってきてる時に上記と逆の動きをしている。↓ ここ重要！
		let newVC = segue.source as! SecondViewController
		myCount = newVC.tmpCount
		// カウントアップして
		myCount += 1
		//値を出力する
		print("前の画面から戻ってきた時<\(myCount)>")
	}
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


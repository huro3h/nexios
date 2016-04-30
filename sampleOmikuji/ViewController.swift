//  ViewController.swift
//  sampleOmikuji
//
//  Created by satoshiii on 2016/04/29.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var myImageView: UIImageView!
	// 占いの結果を配列で用意する
	var omikuji = ["大吉","中吉","小吉","末吉","吉","凶","大凶"]
	
	override func viewDidLoad() {
		super.viewDidLoad()

	}

	@IBAction func tapBtn(sender: UIButton) {
//		print("占いぼたん押された！！")
		
		// 占いの１つをランダムに選ぶ
		// 割った数の余りをカウントしている(arc4random関数)
		var r = Int(arc4random()) % omikuji.count
			print(r)
		// アラートをつくる
		var alertController = UIAlertController(
			title: "今日の運勢",
			message: omikuji[r],
			preferredStyle: .Alert)
		
		// OKボタンを追加　↓handler　に条件分岐の処理をファンクションにいれて書く
		// 具体的なやりかたは最初に処理結果をprintで出力し、確認できたらそれを画像に変える
		alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{action in self.kekka(r)}))
		
		// アラートを表示
		presentViewController(alertController, animated: true, completion: nil)
	
	}
	
	// 引数を一つ追加するとgood!
	func kekka(var r:Int){
		switch r{
		case 0:
			myImageView.image = UIImage(named: "0.png")
		case 1:
			myImageView.image = UIImage(named: "1.png")
		case 2:
			myImageView.image = UIImage(named: "2.png")
		case 3:
			myImageView.image = UIImage(named: "3.png")
		case 4:
			myImageView.image = UIImage(named: "4.png")
		case 5:
			myImageView.image = UIImage(named: "5.png")
		case 6:
			myImageView.image = UIImage(named: "6.png")
		default:
			break
		}
		

	}


	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

}


//
//  ViewController.swift
//  sampleJSON001
//
//  Created by satoshiii on 2016/05/03.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	// 画面が表示される時に
	override func viewWillAppear(_ animated: Bool) {
		
		// json.txtを読み込んで(22行目で止めるとpathに何が入っているかわかる)
		// NSBundle.mainBundle()自分が動かしているアプリの場所を返してくれる
		var path = Bundle.main.path(forResource: "json", ofType: "txt")
		
		// 数字の羅列(読めない)状態で代入
		var jsondata = NSData(contentsOfFile: path!)
		
		// 配列データに変換するよ(読めるデータにして返す)
		// try!(例外処理: エラーが起こった時に()で囲んだ部分を処理する =nilにして返す)
		// 結果変なエラーが起こりにくくなる [Swift2.0〜]
		let jsonArray = (try! JSONSerialization.jsonObject(with: jsondata! as Data, options: [])) as!
		NSArray
		
		// 配列の個数だけ繰り返して表示する(for in 高速列挙で datに代入)
		for dat in jsonArray {
			print ("値=[\(dat)]")
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


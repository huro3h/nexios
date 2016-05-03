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
	override func viewWillAppear(animated: Bool) {
		
		// json.txtを読み込んで(22行目で止めるとpathに何が入っているかわかる)
		// NSBundle.mainBundle()自分が動かしているアプリの場所を返してくれる
		var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
		
		// 数字の羅列(読めない)状態で代入
		var jsondata = NSData(contentsOfFile: path!)
		
		// 配列データに変換するよ(読めるデータにして返す)
		let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as!
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


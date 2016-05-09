//
//  ViewController.swift
//  sampleJSON003
//
//  Created by satoshiii on 2016/05/04.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var hyouji: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func viewWillAppear(animated: Bool) {
		// json.txtファイルの読み込み
		let path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
		
		// 内容を取り出す
		let jsondata = NSData(contentsOfFile: path!)
		
		// 辞書データに変換
		// as データ型で指定したデータ型に変換(ダウンキャスト)
		let jsonDictionary = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
		
		// 辞書データの個数だけ繰り返して表示する(この場合2回回す:理由以下に記載)
		for (key, data) in jsonDictionary {
			var d1 = data["餅"] as! String
			var d2 = data["醤油"] as! String
			var d3 = data["月見団子"] as! String
			
			// この場合キーには"関東"と"関西"が入っている為
			print("キー[\(key)] 餅=[\(d1)]")
			print("キー[\(key)] 醤油=[\(d2)]")
			print("キー[\(key)] 月見団子=[\(d3)]")
			// json.txtを記号で値を揃えると読み込んだ...けどなんで(・ω・)？
			// "切り餅"の値を出したい時 ↓
			hyouji.text = jsonDictionary["関東"]!["餅"] as? String
			
		}
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


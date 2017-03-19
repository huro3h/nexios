//
//  ViewController.swift
//  sampleJSON002
//
//  Created by satoshiii on 2016/05/04.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewWillAppear(_ animated: Bool) {
		// json.txtファイルの読み込み
		var path = Bundle.main.path(forResource: "json", ofType: "txt")
		var jsondata = try? Data(contentsOf: URL(fileURLWithPath: path!))
		
		// 辞書データに変換
		var jsonArray = (try! JSONSerialization.jsonObject(with: jsondata!, options: [])) as! NSArray
		
		// 配列の個数だけ繰り返して表示する
		for dat in jsonArray as! [[String:Any]] {
      var d1 = dat["name"]
      var d2 = dat["price"]
      
			print("name[\(d1)] price=[\(d2)]")
		}
	}
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


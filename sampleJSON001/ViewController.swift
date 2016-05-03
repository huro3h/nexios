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
		// json.txtを読み込んで
		var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
		var jsondata = NSData(contentsOfFile: path!)
		
		// 配列データに変換して
		let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as!
		NSArray
		
		// 配列の個数だけ繰り返して表示する
		for dat in jsonArray {
			print ("値=[\(dat)]")
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


//
//  ViewController.swift
//  samplePList
//
//  Created by satoshiii on 2016/05/16.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	
		// 1.ファイルのパスを取得(json.txt取得した時と描き方は一緒)
		var filePath = NSBundle.mainBundle().pathForResource("friendsList", ofType: "plist")
		
		// 2.ファイルの内容を読み込んでディクショナリー型に代入
		// plistの型を要確認！(今回の場合、Dictionary型に代入)
		var dic = NSDictionary(contentsOfFile: filePath!)
		
		// 3.名前、趣味、性別を表示
		
	
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


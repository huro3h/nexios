//
//  ViewController.swift
//  sampleTableView001
//
//  Created by satoshiii on 2016/05/06.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

// ここでエラーが出るのは、{}内に必要なコード2つ書かれていない為
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var myTableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()

	}

	
	// 1.表示する行数の設定
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10 // 入れたい行数(10行)
	}
	
	// 2.行に表示する内容をリセット
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		cell.textLabel!.text = "\(indexPath.row)行目"
		return cell
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


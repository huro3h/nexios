
//  DiaryListViewController.swift
//  sampleUserDefaultDiary
//
//  Created by satoshiii on 2016/05/13.
//  Copyright © 2016年 satoshiii. All rights reserved.


import UIKit

class DiaryListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

	
	// 10.TableViewに名付け
	@IBOutlet weak var diaryList: UITableView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }

	// 11.必要な処理2つ! (numberOfRowsInSectionとcellForRowAtIndexPath)
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// 変数.count関数を使うことで、変数に変化があったら柔軟に対応できる
		return 10
	}
	
	// 行に表示する内容をセット
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
	{
		// reuseIdentifier: "myCell" -> Main.storyboardのIdentifireと同じ名前に！
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		cell.textLabel!.text = "\(indexPath.row)行目"
		
		return cell
	}
	
	
	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
	


}

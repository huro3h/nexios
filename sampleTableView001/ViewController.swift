//
//  ViewController.swift
//  sampleTableView001
//
//  Created by satoshiii on 2016/05/06.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

// ここでエラーが出るのは、{}内に必要なコード2つ書かれていない為
// あとデリゲートで2つつけるのを忘れないように注意！
// (Delegate処理2つの意)
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
	// returnで入る物、int型(引数) -> 戻り値のデータ型
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		// cell テーブルビューのもう一つ中にあるメソッド
		// reuseIdentifier 再利用できますよーの引数
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		// cellの中に表示する字を代入している (indexPath.row)今何行目のデータを出そうとしているか。の情報が.row（行番号）に入っている引数
		cell.textLabel!.text = "\(indexPath.row)行目"
		return cell
	}
	
	// 3.選択された時に行う処理(Delegate処理)
	// 似た名前がたくさんあるので間違えないように注意！
	func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		print("\(indexPath.row)行目を選択")
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


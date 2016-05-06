//  ViewController.swift
//  sampleTableView002
//
//  Created by satoshiii on 2016/05/06.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

// 0.UITableViewDataSource, UITableViewDelegate追加(使いますよ宣言)
// 更にMain.StoryboardからDataSource,DelegateをD&Dで関連付けを忘れない
// 上記4工程は全て異なることをしているので、どれも忘れないように!
class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

	// TableViewに名前をつける！
	@IBOutlet weak var myTableView: UITableView!
	
	// a1.一覧から選ばれた行番号
	var selectedIndex = -1
	
	
	// 今回は商品名をリスト表示。配列でデータを用意
	var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
	
	// TODO:teaListをmyTableに表示してみましょう
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// 変数.count関数を使うことで、変数に変化があったら柔軟に対応できる
		return teaList.count
	}
	
	// 行に表示する内容をセット
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		// reuseIdentifier: "myCell" -> Main.storyboardのIdentifireと同じ名前に！
		var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		// cell.textLabel!.text = "\(indexPath.row)行目"
		// この辺りで使用している indexPath.row は 「配列で回る数字」のようなもの
		cell.textLabel!.text = "\(teaList[indexPath.row])"
	
		return cell
	}
	
		// 選択された時に行う処理(*既に同じコードを書いている場合、候補には出ないので注意)
		func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		print("\(indexPath.row)行目を選択")
		
		// a2.下記の行を追加
		selectedIndex = indexPath.row
		
		// Main.storyboardでセグエに名前をつけた後で。。。
		// 指定したセグエを使用して画面遷移する
		performSegueWithIdentifier("showDetailView", sender: nil)
	}

	// a3.セグエで画面遷移する時（segueを使って画面を移動するよ！の意）
	// *実はここで次画面の -1 が既に var detailVC に入っている
	// override func prepareForSegueで次画面との処理が「既に」できている為。
	// 本来 -1 を a5.のコードで上書きするはずだが、何らかのエラーが起きて
	// うまく上書きされないと、次画面で -1 が表示されてしまう
	// ＝ 言い換えれば明らかに「おかしい（正しく処理されていない）状態」になっている。
	// 次画面の -1 はそれを確認している。
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		// a4.DetailViewをインスタンス化
		var detailVC = segue.destinationViewController as! DetailViewController
		
		// a5.今から移動しようとしているindex = 今まであったindex
		detailVC.selectedIndex = selectedIndex
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


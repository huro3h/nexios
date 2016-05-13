
//  DiaryListViewController.swift
//  sampleUserDefaultDiary
//
//  Created by satoshiii on 2016/05/13.
//  Copyright © 2016年 satoshiii. All rights reserved.


import UIKit

class DiaryListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

	
	// 10.TableViewに名付け
	@IBOutlet weak var diaryList: UITableView!
	
	// UserDefaultはどこからでも使うことが可能(ここではSegueで受け渡す必要なし)
	var diaryListTmp =
	[["title":"title1","date":"2016-5-13","category":"せぶ","diary":"寝てた"],
	["title":"title2","date":"2016-5-14","category":"せぶ","diary":"海行った"],
	["title":"title1","date":"2016-5-15","category":"せぶ","diary":"勉強してた"]]
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		// 11. 1枚目からまるまるコピー！
		// 8.ユーザーデフォルトから保存されたデータを取り出す
		var myDefault = NSUserDefaults.standardUserDefaults()
		
		// 番外.UserDefault全削除する(1回実行させたらコメントアウトさせておくこと。)
		// でないと常に全削除しちゃう...(´・ω・`)
		//var appDomein:String = NSBundle.mainBundle().bundleIdentifier!
		//myDefault.removePersistentDomainForName(appDomein)
		
		
		// nilが存在するケース(一番最初、何もデータが入力されていない時=保存ボタンが１回も押されていない時)
		if (myDefault.objectForKey("diaryList") != nil){
			
			// 9.データを呼び出して、その後ろに新たなタイトルを追加
			diaryListTmp = myDefault.objectForKey("diaryList") as! [Dictionary]
		}
		print(diaryListTmp)
	}

	// 11.必要な処理2つ! (numberOfRowsInSectionとcellForRowAtIndexPath)
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// 変数.count関数を使うことで、変数に変化があったら柔軟に対応できる
		return diaryListTmp.count
	}
	
	// 行に表示する内容をセット
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
	{
		// reuseIdentifier: "myCell" -> Main.storyboardのIdentifireと同じ名前に！
		let cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
		cell.textLabel!.text = "\(diaryListTmp[indexPath.row]["title"])"
		return cell
	}
	
	
	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
	


}

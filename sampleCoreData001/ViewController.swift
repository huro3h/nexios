//
//  ViewController.swift
//  sampleCoreData001
//
//  Created by satoshiii on 2016/05/17.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit
// 0.CoreDataをインポート
import CoreData

class ViewController: UIViewController {

	
	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func tapSave(sender: UIButton) {
		// print("おされた！")
		// 1.AppDelegateをコードで読み込む
		let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
		
		// 2.Entityの操作を制御する()を()から作成
		if let managedObjectContext:NSManagedObjectContext = appDelegate.managedObjectContext{
			
			// 3.新しくデータを追加する為のEntityを作成する
			let managedObject: AnyObject = NSEntityDescription.insertNewObjectForEntityForName("Todo", inManagedObjectContext: managedObjectContext)
			
			// 4.Todo EntityからObjectを生成し、Attributesに接続して値を代入
			// (Entityにあわせたクラスを作ってから)
			let todo = managedObject as! Todo
			
			todo.title = "hogehoge"
			todo.saveDate = NSDate() // NSDate() 現在の日付を返す
			
			// 5.データの保存処理 (一番大切なやつ！)
			appDelegate.saveContext()
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}


}


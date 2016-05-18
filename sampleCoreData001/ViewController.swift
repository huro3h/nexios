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
	
		read()
		
	}
	
	// すでに存在するデータの読み込み処理
	func read(){
		
		// a1.AppDelegateをコードで読み込む
		let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
		
		// a2.Entityの操作を制御する(managedObjectContext)を(appDelegate)から作成
		if let managedObjectContext:NSManagedObjectContext = appDelegate.managedObjectContext{
			
			// a3.Entityを指定する設定
			let entityDescription = NSEntityDescription.entityForName("Todo", inManagedObjectContext: managedObjectContext)
			
			// a4.フェッチに必要なオブジェクトを準備
			let fetchRequest = NSFetchRequest(entityName: "Todo")
			fetchRequest.entity = entityDescription
			
			// a5.エラーが発生した際にキャッチするための変数
			var error:NSError? = nil
			
			// a6.フェッチリクエスト(データの検索と取得処理)の実行
			// 最初は短く書いて、後からスペースを入れることによってインデントが綺麗に治る
			// do{}catch let error1 as NSError{ error = error1 }
			do{
				let results = try managedObjectContext.executeFetchRequest(fetchRequest)
				
				//　a7.保存した件数をprint表示
				print(results.count)
				
				for managedObject in results {
					let todo = managedObject as! Todo
					
					print("title:\(todo.title) ,saveDate:\(todo.saveDate)")
				}
				
			}catch let error1 as NSError{
				error = error1
			}
		
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	@IBAction func tapSave(sender: UIButton) {
		// print("おされた！")
		// 1.AppDelegateをコードで読み込む
		let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
		
		// 2.Entityの操作を制御する(managedObjectContext)を(appDelegate)から作成
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


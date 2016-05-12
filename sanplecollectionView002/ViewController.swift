//
//  ViewController.swift
//  sanplecollectionView002
//
//  Created by satoshiii on 2016/05/12.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
	
	// 5.中身がDictionary型の配列
	var musicList:[NSDictionary] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 1.iTunesのAPIからLadyGagaの情報を20件取得する!
		// 2.info.plistの項目を変更しないとURLが表示されない(セキュリティ対策の為)
		var url = NSURL(string: "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch?term=oasis&limit=60")
		
		// ここからjsonデータを取得し、ディクショナリー型のデータを受け取り、表示する！
		// 3.APIにリクエスト！
		var request = NSURLRequest(URL: url!)
		
		// 4.JSONデータを取得
		var jsondata = (try! NSURLConnection.sendSynchronousRequest(request, returningResponse: nil))
		
		// 5.Dictionary型のデータを取得(読めなかった辞書データを読めるように変換！)
		let jsonDictionary = (try! NSJSONSerialization.JSONObjectWithData(jsondata, options: [])) as! NSDictionary
		
		// 6.ここから必要な情報だけを取得する(今のままだといっぱい入ったまま)
		for (key, data) in jsonDictionary {
			if (key as! String == "results"){
				// 曲データとCDジャケット画像を取得!
				var resultArray = data as! NSArray
				
				for eachMusic in resultArray{
					print(eachMusic["trackName"])
					print(eachMusic["artworkUrl100"])
					
					// Dictionary型に1セットにして表示の準備を！
					var newMusic:NSDictionary = ["name":eachMusic["trackName"] as! String, "image":eachMusic["artworkUrl100"] as! String]
					
					//var songtitle = ["name":eachMusic["trackName"] as! String]
					//var songpic = ["image":eachMusic["artworkUrl100"] as! String]
					
					// 一曲分のDictionaryを追加
					musicList.append(newMusic)
				}
			}
		}
	}
	
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 42
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		
		// cellの名前変えたからここで変換するよ！
		let cell: customCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! customCell
		
		// *URLからNSURL(画像のURL)を生成するよ！
		let url = NSURL(string: musicList[indexPath.row]["image"] as! String);
		
		// *エラーが起きた時の原因を表示？
		var err: NSError?;
		
		// *URLを読めるように変換？
		let imageData :NSData = (try! NSData(contentsOfURL:url!,options: NSDataReadingOptions.DataReadingMappedIfSafe));
		
		// *変数に表示できるURLを代入？
		var img = UIImage(data:imageData);
		
		// cell.title.text = "No.\(indexPath.row)"
		// cell.image.image = UIImage(named: "aa6.png")
		cell.title.text =  musicList[indexPath.row]["name"] as! String;
		cell.image.image = img
		
		cell.backgroundColor = UIColor.whiteColor()
		
		return cell
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


//  ViewController.swift
//  sampleCollectionView003
//  Created by satoshiii on 2016/05/25.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
	
	// d1.マルチスレッド化させるためのコード
	let queue:dispatch_queue_t = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

	// 1.collectionに名前つける
	// 2.Main.storyboardで2個つなぐ
	@IBOutlet weak var myCollection: UICollectionView!
	
	var musicList:[NSDictionary] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// d2.非同期化
		dispatch_async(queue, {() -> Void in
		
		
			// b1.iTunesのAPIからOasis(LadyGaga)の情報を20件取得する!
			// b2.info.plistの項目を変更しないとURLが表示されない(セキュリティ対策の為)
			var url = NSURL(string: "http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/wa/wsSearch?term=oasis&limit=60")
			
			// ここからjsonデータを取得し、ディクショナリー型のデータを受け取り、表示する！
			// b3.APIにリクエスト！
			var request = NSURLRequest(URL: url!)
			
			// b4.JSONデータを取得
			var jsondata = (try! NSURLConnection.sendSynchronousRequest(request, returningResponse: nil))
			
			// b5.Dictionary型のデータを取得(読めなかった辞書データを読めるように変換！)
			let jsonDictionary = (try! NSJSONSerialization.JSONObjectWithData(jsondata, options: [])) as! NSDictionary
			
			// b6.ここから必要な情報だけを取得する(今のままだといっぱい入ったまま)
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
						
						// クロージャーの中では自分の動きに対してselfが必須、無いと自分の動きだとわからない！
						self.musicList.append(newMusic)
					}
				}
			}
			
			// d3.読み込み直し
			// 最初の1回viewDidLoad内の処理を読むが、最初に実行されるのは「😢起動中です😢」の画面
			// やった「つもり」の仕事をもう一度させる必要がある。（できてない）
			// 非同期で遅れて処理された後、もう一度働いてもらう為に以下の処理が必要
			self.myCollection.reloadData()
		
		})
		

	}
	
	// 3.以下Delegateメソッド3つ (グルーピングが可能になる 使わない時は1)
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	// 4.何アイテム表示させるか → 4-2 customcell.swift新しくファイル追加
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		//return 21
		return musicList.count
		
		// 取ってくる件数が21件より多ければ問題は無いが、
		// 21件を下回った場合、表示するデータがなくなる為エラーが発生する
		// musicList.countとすることで、取ってきた件数 = returnの値となる為
		// 上記のケースが発生しなくなり、エラーが起こらなくなる
		
		
	}
	
	// 5.cellForItemAtIndexPath -> cellの内容を作る
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		
		// 6.cellViewの設定が終わったあと、以下を書き換え(型変換をしている)
		// let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
		
		// (cellの名前変わったから、ここで変換するよ！の意)
		let cell: customCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! customCell
		
		// cellに名前をつけると、titleという選択が可能になる(名付け、紐付け)
//		cell.title.text = "タイトル\(indexPath.row)"
//		cell.image.image = UIImage(named: "sample.png")
		
		
		
		// C1*URLからNSURL(画像のURL)を生成するよ！
		let url = NSURL(string: musicList[indexPath.row]["image"] as! String);
		
		// c2*エラーが起きた時の原因を表示？(危険なやつを取り込まない)
		var err: NSError?;
		
		// c3*URLを読めるように変換？(取得してきてるデータは画像ファイルなので、以下で読めるように変換)
		let imageData :NSData = (try! NSData(contentsOfURL:url!,options: NSDataReadingOptions.DataReadingMappedIfSafe));
		
		// c4*変数に表示できるURLを代入？(NSData型からUIImage型に変換している)
		var img = UIImage(data:imageData);
		
		// cell.title.text = "No.\(indexPath.row)"
		// cell.image.image = UIImage(named: "aa6.png")
		
		// c5musiclistから[0行目の][タイトル名]を表示
		cell.title.text =  musicList[indexPath.row]["name"] as! String;
		cell.image.image = img
		
		// 背景を白に設定
		cell.backgroundColor = UIColor.whiteColor()
		
		return cell
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}


}


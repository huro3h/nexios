//
//  ViewController.swift
//  sanplecollectionView002
//
//  Created by satoshiii on 2016/05/12.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 21
	}
	
	func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		
		// cellの名前変えたからここで変換するよ！
		let cell: customCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! customCell
		
		cell.title.text = "No.\(indexPath.row)"
		cell.image.image = UIImage(named: "aa6.png")
		
		cell.backgroundColor = UIColor.whiteColor()
		
		return cell
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


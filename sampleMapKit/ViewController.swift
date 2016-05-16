//
//  ViewController.swift
//  sampleMapKit
//
//  Created by satoshiii on 2016/05/16.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

// 1.mapkitを使う際、importを書くこと
import MapKit

class ViewController: UIViewController {

	// 2.名前つける
	@IBOutlet weak var myMapView: MKMapView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 3.中心となる場所の座標オブジェクトを作成（今回はアヤラ）
		// 引数に緯度と経度を入れる
		let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
		
		// 4.縮尺を指定
		// 詳細な地図を出したい時は引数をもっと小さくする(経度と緯度なので基本は同じ数字)
		let span = MKCoordinateSpanMake(0.025, 0.025)
		
		// 5.範囲オブジェクトを作成
		// Mapを表示させる準備
		let region = MKCoordinateRegionMake(coodinate, span)
		
		// 6.MapViewに設定
		// ここでMapを表示させる
		myMapView.setRegion(region, animated: true)
	}

	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}


}


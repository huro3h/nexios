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
		let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
	}

	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}


}


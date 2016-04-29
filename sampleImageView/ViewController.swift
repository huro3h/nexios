//
//  ViewController.swift
//  sampleImageView
//
//  Created by satoshiii on 2016/04/29.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var myImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 画像指定のコード
		myImageView.image = UIImage(named: "sample.png")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


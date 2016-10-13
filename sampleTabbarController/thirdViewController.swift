//
//  thirdViewController.swift
//  sampleTabbarController
//
//  Created by satoshiii on 2016/05/07.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func viewWillAppear(_ animated: Bool) {
		var myAp = UIApplication.shared.delegate as! AppDelegate
		myAp.myCount += 1
		print("3画面目 count=\(myAp.myCount)")
	}

	
	
	
	
	
	
	
	
	
	
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//
//    }
	



}

//
//  ViewController.swift
//  sampleSwipeRecognizer
//
//  Created by satoshiii on 2016/05/03.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	// 右上の選択欄からどの方向からスワイプするか
	// 指定が可能
	@IBAction func swipeView(sender: UISwipeGestureRecognizer) {
		print("スワイプされました")
	}
	
	// TODO:色つきのビューを追加して、上スワイプを感知し、
	// "上スワイプされました"と表示しましょう。
	
	@IBAction func swipeViewUP(sender: UISwipeGestureRecognizer) {
		print("うえにすわいぷされました")
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


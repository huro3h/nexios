//  DetailViewController.swift
//  sampleTableView002
//
//  Created by satoshiii on 2016/05/06.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	// a1.一覧から選ばれた行番号
	// 万が一エラーが出た場合、異なる数字を判別する為の数字（普段特に意味はない）
	var selectedIndex = -1
	
	// a6. 何行目が押されているのかprintで確認するよテスト
	override func viewWillAppear(animated: Bool) {
		print(selectedIndex)
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//
//    }
	



}

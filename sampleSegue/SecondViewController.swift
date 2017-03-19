//
//  SecondViewController.swift
//  sampleSegue
//
//  Created by satoshiii on 2016/05/04.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	
	// 受け取り用の変数(メンバ変数、「プロパティ」と呼ぶこともある)
	var tmpCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()


    }

	// 画面が表示された時カウントアップした数字を渡す<\(tmpCount)>
	override func viewWillAppear(_ animated: Bool) {
		print("次の画面が表示された時<\(tmpCount)>")
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

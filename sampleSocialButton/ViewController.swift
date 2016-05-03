//
//  ViewController.swift
//  sampleSocialButton
//
//  Created by satoshiii on 2016/05/03.
//  Copyright © 2016年 satoshiii. All rights reserved.
//

import UIKit

// import 各種フレームワークを使えるようにする
// SocialでSNS機能を使えるように
import Social

class ViewController: UIViewController {

	@IBOutlet weak var twitterBtn: UIButton!
	@IBOutlet weak var fbBtn: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func tapTwitterBtn(sender: UIButton) {
		// print("おされたよ")
		
		// forServiceTypeで何についてかを書いている
		var twitterVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
		twitterVC.setInitialText("twitterでつぶやくよてすと")
		presentViewController(twitterVC, animated: true, completion: nil)
	}
	
	
	
	@IBAction func tapFacebookBtn(sender: UIButton) {
	
	// TODO:FBのシェアボタンを作ろう
		var facebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
		facebookVC.setInitialText("Facebookでつぶやくよてすと (iOS)")
		presentViewController(facebookVC, animated: true, completion: nil)
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


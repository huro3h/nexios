//  ViewController.swift
//  sampleAdMob
//  Created by satoshiii on 2016/05/11.
//  Copyright © 2016年 satoshiii. All rights reserved.

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, GADBannerViewDelegate {
	
	// AdMob ID を入れてください（定数に各項目を代入）
	let AdMobID = "ca-app-pub-3530000000000000/0123456789"
	let TEST_DEVICE_ID = "61b0154xxxxxxxxxxxxxxxxxxxxxxxe0"
	let AdMobTest:Bool = true
	let SimulatorTest:Bool = true
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// 以下参考サイトからのコピぺ
		var admobView: GADBannerView = GADBannerView()
		admobView = GADBannerView(adSize:kGADAdSizeBanner)
		
		// 広告の位置を指定している(下に設置)
		// admobView.frame.origin = CGPointMake(0, self.view.frame.size.height - admobView.frame.height)
		
		// ↓上に設置の場合
		admobView.frame.origin = CGPointMake(0, 20)
		// 広告のサイズを指定している
		admobView.frame.size = CGSizeMake(self.view.frame.width, admobView.frame.height)
		
		
		admobView.adUnitID = AdMobID
		admobView.delegate = self
		admobView.rootViewController = self
		
		let admobRequest:GADRequest = GADRequest()
		
		if AdMobTest {
			if SimulatorTest {
				admobRequest.testDevices = [kGADSimulatorID]
			}
			else {
				admobRequest.testDevices = [TEST_DEVICE_ID]
			}
			
		}
		
		admobView.loadRequest(admobRequest)
		
		self.view.addSubview(admobView)

	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//		// Dispose of any resources that can be recreated.
//	}


}


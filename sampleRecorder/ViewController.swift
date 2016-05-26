//
//  ViewController.swift
//  sampleRecorder
//
//  Created by satoshiii on 2016/05/26.
//  Copyright © 2016年 satoshiii. All rights reserved.


import UIKit
// 1. 録音、録画機能を使うフレームワーク
import AVFoundation

class ViewController: UIViewController {

	// 2.音声関連に使うメンバ変数を先に宣言(今回は4つ)
	// 使う機会が多く、しかもバラバラになりやすい為
	
	// file操作をするときに役立つNSFileManager
	// 録音したファイルをDocmentsディレクトリに保存しています。
	// importでAVFoundationを読み込んでいる為指定が可能になっている
	let fileManager = NSFileManager()
	var audioRecorder: AVAudioRecorder?
	var audioPlayer: AVAudioPlayer?
	let fileName = "sample.caf" // .caf 音声ファイルに用いられる
	
	
	
	@IBOutlet weak var recordBtn: UIButton!
	@IBOutlet weak var plyBtn: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.setupAudioRecorder()
	}

	@IBAction func tapBtnRecord(sender: UIButton) {
	}
	
	
	@IBAction func tapBtnPlay(sender: UIButton) {
	}

	// 自作関数(録音する為に必要な設定を行う関数で、今回はviewDidLoad時に行う)
	// 3.再生と録音に関する最低限の機能を以下で設定している
	func setupAudioRecorder (){
		// 再生と録音機能をアクティブにする
		let session = AVAudioSession.sharedInstance()
		try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
		try! session.setActive(true)
		let recordSetting : [String : AnyObject] = [
			AVEncoderAudioQualityKey : AVAudioQuality.Min.rawValue,
			AVEncoderBitRateKey : 16,
			AVNumberOfChannelsKey : 2,
			AVSampleRateKey : 44100
		]
	}
	
	
	
	
	
	
	
	
	
	
	
	//	override func didReceiveMemoryWarning() {
//		super.didReceiveMemoryWarning()
//	}


}


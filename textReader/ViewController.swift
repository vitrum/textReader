//
//  ViewController.swift
//  textReader
//
//  Created by vitrum.zhu on 15/10/15.
//  Copyright © 2015年 vitrum.zhu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    

    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textToSpeech(sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.4
        synth.speakUtterance(myUtterance)
    }

}


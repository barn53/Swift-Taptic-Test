//
//  ViewController.swift
//  Swift Taptic Test
//
//  Created by Gerd Müller on 05.03.16.
//  Copyright © 2016 Gerd Müller. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func peekAction(sender: AnyObject) {
        UIDevice.currentDevice()._tapticEngine().actuateFeedback(UITapticEngineFeedbackPeek)
    }

    @IBAction func popAction(sender: AnyObject) {
        UIDevice.currentDevice()._tapticEngine().actuateFeedback(UITapticEngineFeedbackPop)
    }

    @IBAction func vibrateAction(sender: AnyObject) {
        AudioServicesPlayAlertSoundWithCompletion(kSystemSoundID_Vibrate, nil)
    }

    /*
    @IBAction func alertAction(sender: AnyObject) {
        AudioServicesPlayAlertSoundWithCompletion(kSystemSoundID_UserPreferredAlert)
    }
    */
}


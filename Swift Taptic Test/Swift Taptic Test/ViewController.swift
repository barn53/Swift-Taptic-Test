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

    func delay(delay: Double, closure: ()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(),
            closure
        )
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

    @IBAction func peek3Action(sender: AnyObject) {
        UIDevice.currentDevice()._tapticEngine().actuateFeedback(UITapticEngineFeedbackPeek)
        delay(0.17) {
            UIDevice.currentDevice()._tapticEngine().actuateFeedback(UITapticEngineFeedbackPeek)
            self.delay(0.17) {
                UIDevice.currentDevice()._tapticEngine().actuateFeedback(UITapticEngineFeedbackPeek)
            }
        }
    }
}


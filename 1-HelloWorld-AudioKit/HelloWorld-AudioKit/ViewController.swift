//
//  ViewController.swift
//  HelloWorld-AudioKit
//
//  Created by Nicholas Arner on 4/28/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit
//Import AudioKit, so that we can use AudioKit for this view controller
import AudioKit

class ViewController: UIViewController {

    //Create an instance of an AKOscillator
    var oscillator = AKOscillator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set the output of AudioKit to be the audio of the oscillator we created above
        AudioKit.output = oscillator
        //Start the AudioKit audio-engine
        AudioKit.start()
        //Start our oscillator so it can make a sound!
        oscillator.start()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


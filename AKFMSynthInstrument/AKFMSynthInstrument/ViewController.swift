//
//  ViewController.swift
//  AKFMSynthInstrument
//
//  Created by Nicholas Arner on 5/18/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit
import AudioKit



class ViewController: UIViewController {

    
    var fmSynth: AKFMSynthInstrument!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Here, we create an instance of our AKFMSynthInstrument class
        fmSynth = AKFMSynthInstrument()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playC(sender: AnyObject) {
        fmSynth.playC()
    }
    
    
    @IBAction func stopC(sender: AnyObject) {
        fmSynth.stopC()
    }
    
    
    @IBAction func playE(sender: AnyObject) {
        fmSynth.playE()
    }
    
    @IBAction func stopE(sender: AnyObject) {
        fmSynth.stopE()
    }
    
    @IBAction func playG(sender: AnyObject) {
        fmSynth.playG()
    }
    
    @IBAction func stopG(sender: AnyObject) {
        fmSynth.stopG()
    }
}


//
//  ViewController.swift
//  AKFMSynthInstrument
//
//  Created by Nicholas Arner on 5/18/16.
//  Copyright © 2016 University of York Department of Electronics 
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    var fmSynth: AKFMSynthInstrument!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create an instance of our AKFMSynthInstrument class
        fmSynth = AKFMSynthInstrument()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* When we press down on a button, one of the functions below is called
        to play the appropriate note. We use our buttons' Touch Down event
        to tell whether or not we're pressing the button */
    @IBAction func playC(sender: AnyObject) {
        fmSynth.playC()
    }
    
    @IBAction func playE(sender: AnyObject) {
        fmSynth.playE()
    }
    
    @IBAction func playG(sender: AnyObject) {
        fmSynth.playG()
    }
    
    /* When we release a button, one of the functions below is called to stop
        the appropriate note.  We use our buttons' Touch Up Inside and 
        Touch Up Outside events to tell if we've taken our finger off the 
        button. A Touch Up Inside event occurs if a finger is on a button
        and then taken of. A Touch Up Outside event occurs if a finger is on 
        a button, is moved to another part of the screen, and then taken off. */
    
    @IBAction func stopC(sender: AnyObject) {
        fmSynth.stopC()
    }
    
    @IBAction func stopE(sender: AnyObject) {
        fmSynth.stopE()
    }

    @IBAction func stopG(sender: AnyObject) {
        fmSynth.stopG()
    }
}

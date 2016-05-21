//
//  ViewController.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 University of York Department of Electronics (Coded by Nick Arner)
//

import UIKit

class ViewController: UIViewController {
    
    var audioSampler: AudioSampler!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        audioSampler = AudioSampler()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //On/Off controls
    @IBAction func toggleSampleOne(sender: AnyObject) {
        audioSampler.stopOrPlaySampleOne()
    }
    
    @IBAction func toggleSampleTwo(sender: AnyObject) {
        audioSampler.stopOrPlaySampleTwo()
    }
}

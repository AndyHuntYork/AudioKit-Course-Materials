//
//  ViewController.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
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
    
    

    @IBAction func playSampleOne(sender: AnyObject) {
        audioSampler.playSampleOne()
    }
    
    @IBAction func playSampleTwo(sender: AnyObject) {
        audioSampler.playSampleTwo()
    }
    
    @IBAction func playSampleThree(sender: AnyObject) {
        audioSampler.playSampleThree()
    }

}


//
//  ViewController.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sampleOneLoopControl: UISegmentedControl!
    @IBOutlet var sampleTwoLoopControl: UISegmentedControl!
    @IBOutlet var sampleThreeLoopControl: UISegmentedControl!
    
    
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
    
    @IBAction func sampleOneLoopValueChanged(sender: AnyObject) {
        if sampleOneLoopControl.selectedSegmentIndex == 0 {
            audioSampler.setSampleOneLoopValue(true)
        } else {
            audioSampler.setSampleOneLoopValue(false)
        }
    }
    
    @IBAction func sampleTwoLoopValueChanged(sender: AnyObject) {
        if sampleTwoLoopControl.selectedSegmentIndex == 0 {
            audioSampler.setSampleTwoLoopValue(true)
        } else {
            audioSampler.setSampleTwoLoopValue(false)
        }
    }
    
    @IBAction func sampleThreeLoopValueChanged(sender: AnyObject) {
        if sampleThreeLoopControl.selectedSegmentIndex == 0 {
            audioSampler.setSampleThreeLoopValue(true)
        } else {
            audioSampler.setSampleThreeLoopValue(false)
        }
    }

}


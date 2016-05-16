//
//  ViewController.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var playerOneLoopControl: UISegmentedControl!
    @IBOutlet var playerTwoLoopControl: UISegmentedControl!
    @IBOutlet var playerThreeLoopControl: UISegmentedControl!
    
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
    
    @IBAction func toggleSampleThree(sender: AnyObject) {
        audioSampler.stopOrPlaySampleThree()
    }
    
    //Looping toggle controls
    @IBAction func playerOneLoopingValueChanged(sender: AnyObject) {
        audioSampler.playerOne.stop()
        if playerOneLoopControl.selectedSegmentIndex == 0 {
            audioSampler.playerOne.looping = false
        } else {
            audioSampler.playerOne.looping = true
        }
    }

    @IBAction func playerTwoLoopingValueChanged(sender: AnyObject) {
        audioSampler.playerTwo.stop()
        if playerTwoLoopControl.selectedSegmentIndex == 0 {
            audioSampler.playerTwo.looping = false
        } else {
            audioSampler.playerTwo.looping = true
        }
    }
    
    @IBAction func playerThreeLoopingValueChanged(sender: AnyObject) {
        audioSampler.playerThree.stop()
        if playerThreeLoopControl.selectedSegmentIndex == 0 {
            audioSampler.playerThree.looping = false
        } else {
            audioSampler.playerThree.looping = true
        }
    }
}

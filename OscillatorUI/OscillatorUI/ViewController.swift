//
//  ViewController.swift
//  OscillatorUI
//
//  Created by Nicholas Arner on 4/28/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    /* These outlets are connected to our user-interface elements in 
    our storyboard. If you click on the grey circle to the left of each 
     IBOutlet (InterfaceBuilder Outlet), you will see which element in 
     the storyboard the outlet is connected to. */
    
    @IBOutlet var frequencyLabel: UILabel!
    @IBOutlet var amplitudeLabel: UILabel!
    
    @IBOutlet var frequencySlider: UISlider!
    @IBOutlet var amplitudeSlider: UISlider!

    
    var oscillator = AKOscillator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Just like the earlier examples, we'll set AudioKit's output
        and start the AudioKit engine when the app starts, but we wont'
        start our oscillator just yet... */
        
        AudioKit.output = oscillator
        AudioKit.start()
    }

    
    // MARK: UI Controls
    
    @IBAction func startSound(sender: AnyObject) {
        /* Whenever we click on the "Start" button, we will turn
        on our oscillator. Additionally, we will update our labels
        with the oscillator's frequency and amplitude values */
        
        oscillator.start()
    
        frequencyLabel?.text = "\(oscillator.frequency)"
        amplitudeLabel?.text = "\(oscillator.amplitude)"
    }
    
    @IBAction func stopSound(sender: AnyObject) {
        /* Stop the oscillator from playing whenever the "Stop" button
        is pressed */
        oscillator.stop()
    }
    
    @IBAction func changeFrequency(sender: AnyObject) {
        /* Whenever we move the Frequency slider, we'll change our 
        oscillator's frequency value. Since UISlider's send out integer
        values, we'll need to cast them as doubles , as AudioKit
        expects Double values */
        
        oscillator.frequency = Double(frequencySlider.value)
        
        /* When we change our oscillator's frequency, we'll also want
        to update our frequency label. The line below sets the our 
        label's `text` property to that of our oscillator's frequency
        property */
        frequencyLabel?.text = "\(oscillator.frequency)"
    }
    
    @IBAction func changeAmplitude(sender: AnyObject) {
        oscillator.amplitude = Double(amplitudeSlider.value)
        amplitudeLabel?.text = "\(oscillator.amplitude)"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

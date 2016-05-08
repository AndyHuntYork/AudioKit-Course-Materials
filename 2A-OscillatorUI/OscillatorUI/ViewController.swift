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
    
    /* We want to make sure we initialize our sliders to have 
        appropriate value ranges for controlling our oscillator. These 
        values our set in our Main.storyboard file. To see this, click
        on the grey circle next to the IBOutlets below. A pop-up will 
        appear, showing you the slider in the storboard. Click on it. 
        On the right-hand side, you will see where the Maximum, Minimum, 
        and Current values for the slider is set. The Current value is 
        the initial, starting value.*/
    
    @IBOutlet var frequencySlider: UISlider!
    @IBOutlet var amplitudeSlider: UISlider!

    // Create variables for our oscillator
    var oscillator = AKOscillator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Just like the earlier examples, we'll set AudioKit's output
        and start the AudioKit engine when the app starts, but we won't
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
    
        frequencyLabel.text = String(format: "%0.2f", oscillator.frequency)
        amplitudeLabel.text = String(format: "%0.2f", oscillator.amplitude)
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
        frequencyLabel.text = String(format: "%0.2f", oscillator.frequency)
    }
    
    @IBAction func changeAmplitude(sender: AnyObject) {
        oscillator.amplitude = Double(amplitudeSlider.value)
        amplitudeLabel.text = String(format: "%0.2f", oscillator.amplitude)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

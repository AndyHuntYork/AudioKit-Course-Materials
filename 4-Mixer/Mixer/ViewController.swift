//
//  ViewController.swift
//  Mixer
//
//  Created by Nicholas Arner on 5/2/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Create outlets for our sliders and labels
    @IBOutlet var drumsVolumeSlider: UISlider!
    @IBOutlet var bassVolumeSlider: UISlider!
    @IBOutlet var guitarVolumeSlider: UISlider!
    @IBOutlet var leadVolumeSlider: UISlider!

    @IBOutlet var drumsVolumeLabel: UILabel!
    @IBOutlet var bassVolumeLabel: UILabel!
    @IBOutlet var guitarVolumeLabel: UILabel!
    @IBOutlet var leadLineVolumeLabel: UILabel!
    
    //Create a global variable for our Audio Mixer
    var audioMixer: AudioMixer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Here, we create an instance of our AudioMixer class
        audioMixer = AudioMixer()
    }
    
    /* Use these functions to set the volume for each individual audio track, and
        update the value of the corresponding labels */
    
    @IBAction func setDrumsVolume(sender: AnyObject) {
        audioMixer.setDrumsVolume(drumsVolumeSlider.value)
        drumsVolumeLabel.text = String(format: "%0.2f", audioMixer.drums.volume)
    }
    
    @IBAction func setBassVolume(sender: AnyObject) {
        audioMixer.setBassVolume(bassVolumeSlider.value)
        bassVolumeLabel.text = String(format: "%0.2f", audioMixer.bass.volume)
    }
    
    @IBAction func setGuitarVolume(sender: AnyObject) {
        audioMixer.setGuitarVolume(guitarVolumeSlider.value)
        guitarVolumeLabel.text = String(format: "%0.2f", audioMixer.guitar.volume)
    }
    
    @IBAction func setLeadVolume(sender: AnyObject) {
        audioMixer.setLeadVolume(leadVolumeSlider.value)
        leadLineVolumeLabel.text = String(format: "%0.2f", audioMixer.lead.volume)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

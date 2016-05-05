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
    
    
    
    @IBAction func setDrumsVolume(sender: UISlider) {
        audioMixer.setDrumsVolume(drumsVolumeSlider.value)
        drumsVolumeLabel.text = String(audioMixer.drums.volume)
    }
    
    @IBAction func setBassVolume(sender: UISlider) {
        audioMixer.setBassVolume(bassVolumeSlider.value)
        bassVolumeLabel.text = String(audioMixer.bass.volume)
    }
    
    @IBAction func setGuitarVolume(sender: UISlider) {
        audioMixer.setGuitarVolume(guitarVolumeSlider.value)
        guitarVolumeLabel.text = String(audioMixer.guitar.volume)
    }
    
    @IBAction func setLeadVolume(sender: UISlider) {
        audioMixer.setLeadVolume(leadVolumeSlider.value)
        leadLineVolumeLabel.text = String(audioMixer.lead.volume)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


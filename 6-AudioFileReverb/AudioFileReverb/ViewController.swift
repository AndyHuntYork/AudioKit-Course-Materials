//
//  ViewController.swift
//  AudioFileReverb
//
//  Created by Nicholas Arner on 4/28/16.
//  Copyright © 2016 University of York Department of Electronics 
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bundle = NSBundle.mainBundle()
        let file = bundle.pathForResource("drumloop", ofType: "wav")
        let player = AKAudioPlayer(file!)
        player.looping = true
        
        /* Create an instance of AKReverb. AKReverb is a wrapper for Apple's
        Reverb Audio Unit */
        let reverb = AKReverb(player)
        
        /* Set the value for how much reverb you want to have. Try experimenting
        with different values until you get a sound you like! */
        reverb.dryWetMix = 0.5
        
        
        
        /* Since we're running our AKAudioPlayer through an AKReverb, we want to
        set AudioKit's output to be that of our reverb so we can hear the affected 
        sound, and not just the sound of the unprocessed audio file */
        AudioKit.output = reverb
        AudioKit.start()
        player.play()
        
        /* As AKReverb is a wrapper for Apple's Reverb AudioUnit, we can make use
        of the presets that Apple provides. A complete list of available presets 
        can be found here:https://developer.apple.com/library/ios/documentation/AVFoundation/Reference/AVAudioUnitReverb_Class/#//apple_ref/c/tdef/AVAudioUnitReverbPreset
        Try experimenting with different presets yourself! */
        reverb.loadFactoryPreset(.Cathedral)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


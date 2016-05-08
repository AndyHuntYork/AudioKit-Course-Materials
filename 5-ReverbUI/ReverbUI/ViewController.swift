//
//  ViewController.swift
//  ReverbUI
//
//  Created by Nicholas Arner on 4/30/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    /* This outlet allows us to access the value of our UISlider, so that we
     @IBOutlet var reverbAmmountLabel: UILabel!
        can use it to set our reverb dry/wet mix value later on...*/

    @IBOutlet var dryWeMixSlider: UISlider!
    
    /* This outlet lets us display how much reverb we're applying to the audio
    file */
    @IBOutlet var reverbAmmountLabel: UILabel!

    //Create a global variable for our Reverb Audio Player
    var reverbAudioPlayer: ReverbAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Here, we create an instance of our ReverbAudioPlayer class
        reverbAudioPlayer = ReverbAudioPlayer()
        
        //This displays our reverb's initial dryWetMix value
        reverbAmmountLabel.text = String(format: "%0.2f", reverbAudioPlayer.reverb.dryWetMix)
    }

    
    @IBAction func toggleSound(sender: AnyObject) {
        
        /* Here, we use our UIButton to toggle our audio player. Each time the 
         button is pressed, we check what the state of our audio player is. If 
         the player is playing when we press the button, then we want to stop 
         the player. If the player is not playing when we press the button, 
         then we want to turn the player on. */
        if reverbAudioPlayer.audioLoopPlayer.isPlaying == true {
            reverbAudioPlayer.audioLoopPlayer.stop()
        } else if reverbAudioPlayer.audioLoopPlayer.isPlaying == false {
            reverbAudioPlayer.audioLoopPlayer.start()
        }
    }
    
    /* This method is called whenever our slider is moved. In turn, it calls the
        setReverbMixValue of our ReverbAudioPlayer class. When setReverbMixValue
        is called, we pass it the value of our slider. We also send the value 
        to our reverbAmmountLabel, so we can see how much reverb is being 
        applied to the audio file. */
    @IBAction func setDryWetMixValue(sender: AnyObject) {
        reverbAudioPlayer.setReverbMixValue(dryWeMixSlider.value)
        reverbAmmountLabel.text = String(format: "%0.2f", reverbAudioPlayer.reverb.dryWetMix)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

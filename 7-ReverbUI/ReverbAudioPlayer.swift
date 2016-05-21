//
//  ReverbAudioPlayer.swift
//  ReverbUI
//
//  Created by Nicholas Arner on 4/30/16.
//  Copyright © 2016 University of York Department of Electronics (Coded by Nick Arner)
//

import AudioKit

public class ReverbAudioPlayer {

    // Create variables for our audio player and our reverb effect
    var audioLoopPlayer: AKAudioPlayer
    var reverb: AKReverb
    
    init() {
        
        let bundle = NSBundle.mainBundle()
        let file = bundle.pathForResource("drumloop", ofType: "wav")

        audioLoopPlayer = AKAudioPlayer(file!)
        reverb = AKReverb(audioLoopPlayer)
        
        // This is where we set our audio player and reverb properties
        audioLoopPlayer.looping = true
        reverb = AKReverb(audioLoopPlayer)
        reverb.dryWetMix = 0.5
        reverb.loadFactoryPreset(.Cathedral)

        AudioKit.output = reverb
        AudioKit.start()
    }

    
    /* These functions are exposed to our View Controller, so that we can
    use our UIButton to toggle the audio player on and off. */
    public func startSound() {
        audioLoopPlayer.start()
    }
    
    public func stopSound(){
        audioLoopPlayer.stop()
    }
    
    
    /* This funtion is called by our View Controller whenever our slider is 
        moved. It expects one paremter, reverbMixValue, which is a float */
    public func setReverbMixValue(reverbMixValue: Float){
        /* Whenever setReverbMixValue is called, it sets the value of our
        reverb's dryWetMix property from the reverbMixValue property */
        reverb.dryWetMix = Double(reverbMixValue)
    }
}

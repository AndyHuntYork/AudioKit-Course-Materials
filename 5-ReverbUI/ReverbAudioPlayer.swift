//
//  ReverbAudioPlayer.swift
//  ReverbUI
//
//  Created by Nicholas Arner on 4/30/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import AudioKit

//Create global variables to access our audio loop file
let bundle = NSBundle.mainBundle()
let file = bundle.pathForResource("drumloop", ofType: "wav")
//Create a global varable for our audio player, and use our loop file as input
let audioLooplayer = AKAudioPlayer(file!)
//Create a instance of AKReverb, and use our audioLoopPlayer as it's input
var reverb = AKReverb(audioLooplayer)

public class ReverbAudioPlayer: NSObject {
    
    /* Create an internal variable for our class so we can access our audio
        player's properties in our class methods */
    let audioPlayer = audioLooplayer
    
    override init() {
        super.init()
        
        //This is where we set our audio player and reverb properties
        audioPlayer.looping = true
        reverb = AKReverb(audioPlayer)
        reverb.dryWetMix = 0.5
        reverb.loadFactoryPreset(.Cathedral)

        AudioKit.output = reverb
        AudioKit.start()
    }

    
    /* These functions are exposed to our View Controller, so that we can
    use our UIButton to toggle the audio player on and off. */
    public func startSound() {
        audioPlayer.start()
    }
    
    public func stopSound(){
        audioPlayer.stop()
    }
    
    
    /* This funtion is called by our View Controller whenever our slider is 
        moved. It expects one paremter, reverbMixValue, which is a float */
    public func setReverbMixValue(reverbMixValue: Float){
        /* Whenever setReverbMixValue is called, it sets the value of our
        reverb's dryWetMix property from the reverbMixValue property */
        reverb.dryWetMix = Double(reverbMixValue)
    }
}

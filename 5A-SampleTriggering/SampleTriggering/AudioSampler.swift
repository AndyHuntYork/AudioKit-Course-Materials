//
//  AudioSampler.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 University of York Department of Electronics 
//

import Foundation
import AudioKit

public class AudioSampler {
    
    var playerOne: AKAudioPlayer
    var playerTwo: AKAudioPlayer
    
    init () {
        
        //Load in our audio samples
        let bundle = NSBundle.mainBundle()
        let sampleOne = bundle.pathForResource("siren", ofType: "wav")
        let sampleTwo = bundle.pathForResource("drum-and-bass-loop", ofType: "wav")
        
        //Create audio players for each track
        playerOne = AKAudioPlayer(sampleOne!)
        playerTwo = AKAudioPlayer(sampleTwo!)
                
        //Create a mixer that uses our audio loops as inputs
        let mixer = AKMixer(playerOne, playerTwo)
        
        //Set AudioKit's output to be our mixer, and start the AudioKit engine
        AudioKit.output = mixer
        AudioKit.start()
    }
    
    public func stopOrPlaySampleOne() {
        playerOne.play()
    }
    
    public func stopOrPlaySampleTwo() {
        playerTwo.play()
    }
}

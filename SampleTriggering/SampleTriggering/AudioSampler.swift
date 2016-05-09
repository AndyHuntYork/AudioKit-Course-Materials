//
//  AudioSampler.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import Foundation
import AudioKit

public class AudioSampler {
    
    var playerOne: AKAudioPlayer
    var playerTwo: AKAudioPlayer
    var playerThree: AKAudioPlayer
    
    init () {
        
        //Load in our audio samples
        let bundle = NSBundle.mainBundle()
        let sampleOne   = bundle.pathForResource("pianoSample", ofType: "wav")
        let sampleTwo   = bundle.pathForResource("drum-and-bass-loop", ofType: "wav")
        let samplerThree = bundle.pathForResource("siren", ofType: "wav")
            
        //Create audio players for each track
        playerOne   = AKAudioPlayer(sampleOne!)
        playerTwo   = AKAudioPlayer(sampleTwo!)
        playerThree = AKAudioPlayer(samplerThree!)
        
        //Set each track to loop
        playerOne.looping  = true
        playerTwo.looping   = true
        playerThree.looping = true
        
        //Create a mixer that uses our audio loops as inputs
        let mixer = AKMixer(playerOne, playerTwo, playerThree)
        
        //Set AudioKit's output to be our mixer, and start the AudioKit engine
        AudioKit.output = mixer
        AudioKit.start()
    }
    
    
    public func playSampleOne() {
        
        if playerOne.isPlaying {
            playerOne.stop()
        } else {
            playerOne.play()
        }
    }
    
    public func playSampleTwo() {
        if playerTwo.isPlaying {
            playerTwo.stop()
        } else {
            playerTwo.play()
        }
    }
    
    public func playSampleThree() {
        if playerThree.isPlaying {
            playerThree.stop()
        } else {
            playerThree.play()
        }
    }

}

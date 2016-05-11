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
        let sampleOne    = bundle.pathForResource("pianoSample", ofType: "wav")
        let sampleTwo    = bundle.pathForResource("drum-and-bass-loop", ofType: "wav")
        let sampleThree = bundle.pathForResource("siren", ofType: "wav")
            
        //Create audio players for each track
        playerOne   = AKAudioPlayer(sampleOne!)
        playerTwo   = AKAudioPlayer(sampleTwo!)
        playerThree = AKAudioPlayer(sampleThree!)
        
        //Set each track to loop
        playerOne.looping   = true
        playerTwo.looping   = true
        playerThree.looping = true
        
        //Create a mixer that uses our audio loops as inputs
        let mixer = AKMixer(playerOne, playerTwo, playerThree)
        
        //Set AudioKit's output to be our mixer, and start the AudioKit engine
        AudioKit.output = mixer
        AudioKit.start()
    }
    
    
    public func stopOrPlaySampleOne() {
        /* Here, we check if our audio player is playing. We also check whether
            or not our player's playhead (where in at in the audio file the 
            player is currently at) is less than the total length of the audio 
            file. So, if we push our button while the audio file is stopped, it
            will start playing. If we press it again, it will start playing
            from the beginning of the track. */
        
        if playerOne.isPlaying && playerOne.playhead < playerOne.duration {
            playerOne.stop()
        } else {
            playerOne.play()
        }
        
        //This will print out the current time value of the audio file
        print(playerOne.playhead)
    }
    
    public func stopOrPlaySampleTwo() {
        if playerTwo.isPlaying && playerTwo.playhead < playerTwo.duration {
            playerTwo.stop()
        } else {
            playerTwo.play()
        }
    }
    
    public func stopOrPlaySampleThree() {
        if playerThree.isPlaying && playerThree.playhead < playerThree.duration {
            playerThree.stop()
        } else {
            playerThree.play()
        }
    }
    
    public func setSampleOneLoopValue(shouldLoop: Bool){
        if shouldLoop == true {
            playerOne.looping = true
        } else {
            playerOne.looping = false
        }
    }

    public func setSampleTwoLoopValue(shouldLoop: Bool){
        if shouldLoop == true {
            playerTwo.looping = true
        } else {
            playerTwo.looping = false
        }
    }
    
    public func setSampleThreeLoopValue(shouldLoop: Bool){
        if shouldLoop == true {
            playerThree.looping = true
        } else {
            playerThree.looping = false
        }
    }
    
}

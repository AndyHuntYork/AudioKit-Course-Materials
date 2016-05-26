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
    var playerThree: AKAudioPlayer
    
    init () {
        //Load in our audio samples
        let bundle = NSBundle.mainBundle()
        let sampleOne   = bundle.pathForResource("siren", ofType: "wav")
        let sampleTwo   = bundle.pathForResource("drum-and-bass-loop", ofType: "wav")
        let sampleThree = bundle.pathForResource("pianoSample", ofType: "wav")
            
        //Create audio players for each track
        playerOne   = AKAudioPlayer(sampleOne!)
        playerTwo   = AKAudioPlayer(sampleTwo!)
        playerThree = AKAudioPlayer(sampleThree!)
                
        //Create a mixer that uses our audio loops as inputs
        let mixer = AKMixer(playerOne, playerTwo, playerThree)
        
        //Set AudioKit's output to be our mixer, and start the AudioKit engine
        AudioKit.output = mixer
        AudioKit.start()
    }
    
    
    public func stopOrPlaySampleOne() {
        /* Here, we check if our audio player is playing. We also check whether
            or not our player's playhead (where at in the audio file the 
            player is currently at) is less than the total length of the audio 
            file. So, if we push our button while the audio file is stopped, it
            will start playing. If we press it again, it will start playing
            from the beginning of the track. The reason we need to add this
            check is that even though the audio file may be done playing, the
            audio PLAYER itself is still playing */
        
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
}

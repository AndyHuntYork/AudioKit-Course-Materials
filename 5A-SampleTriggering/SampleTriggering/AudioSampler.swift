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
        let sampleOne = try? AKAudioFile(readFileName: "siren.wav", baseDir: .Resources)
        let sampleTwo = try? AKAudioFile(readFileName: "drum-and-bass-loop.wav", baseDir: .Resources)

        //Create audio players for each track
        playerOne = try! AKAudioPlayer(file: sampleOne!)
        playerTwo = try! AKAudioPlayer(file: sampleTwo!)
                
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

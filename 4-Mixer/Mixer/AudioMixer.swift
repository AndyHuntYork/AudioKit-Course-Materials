//
//  AudioMixer.swift
//  Mixer
//
//  Created by Nicholas Arner on 5/2/16.
//  Copyright © 2016 University of York Department of Electronics 
//

import Foundation
import AudioKit

public class AudioMixer {
    
    var drums: AKAudioPlayer
    var bass: AKAudioPlayer
    var guitar: AKAudioPlayer
    var lead: AKAudioPlayer
    
    init() {
        
        //Load in our audio samples
        let bundle = NSBundle.mainBundle()
        let drumFile   = bundle.pathForResource("drumloop", ofType: "wav")
        let bassFile   = bundle.pathForResource("bassloop", ofType: "wav")
        let guitarFile = bundle.pathForResource("guitarloop", ofType: "wav")
        let leadFile   = bundle.pathForResource("leadloop", ofType: "wav")

        //Create audio players for each track
        drums  = AKAudioPlayer(drumFile!)
        bass   = AKAudioPlayer(bassFile!)
        guitar = AKAudioPlayer(guitarFile!)
        lead   = AKAudioPlayer(leadFile!)
        
        //Set each track to loop
        drums.looping  = true
        bass.looping   = true
        guitar.looping = true
        lead.looping   = true
        
        //Create a mixer that uses our audio loops as inputs
        let mixer = AKMixer(drums, bass, guitar, lead)
        
        //Set AudioKit's output to be our mixer, and start the AudioKit engine
        AudioKit.output = mixer
        AudioKit.start()
        
        //Start playing each of the individual audio tracks
        drums.play()
        bass.play()
        guitar.play()
        lead.play()
    }
    
    public func setDrumsVolume(drumsVolume: Float){
        drums.volume = Double(drumsVolume)
    }
    
    public func setBassVolume(bassVolume: Float){
        bass.volume = Double(bassVolume)
    }
    
    public func setGuitarVolume(guitarVolume: Float){
        guitar.volume = Double(guitarVolume)
    }
    
    public func setLeadVolume(leadVolume: Float){
        lead.volume = Double(leadVolume)
    }
}
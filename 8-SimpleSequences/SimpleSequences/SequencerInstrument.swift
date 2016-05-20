//
//  Sequencer.swift
//  SimpleSequences
//
//  Created by Nicholas Arner on 5/20/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import AudioKit

public class SequencerInstrument {
    
    var sequencer: AKSequencer
    
    init() {
        
        let sampler = AKSampler()
        
        //sampler.loadEXS24("sawPiano1")
        sampler.loadWav("fmpia1")
        let reverb = AKCostelloReverb(sampler)
        
        AudioKit.output = reverb

        
        sequencer = AKSequencer(filename: "4tracks", engine: AudioKit.engine)

        sequencer.setLength(4)
        sequencer.enableLooping()
        
        
        sequencer.setGlobalAVAudioUnitOutput(sampler.samplerUnit)

        AudioKit.start()
        sequencer.play()

    }
        
}
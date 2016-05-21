//
//  Sequencer.swift
//  SimpleSequences
//
//  Created by Nicholas Arner on 5/20/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import AudioKit

public class SequencerInstrument {
    
    //Create our sequencer
    var sequencer: AKSequencer
    
    init() {
        
        //Create our sampler
        let sampler = AKSampler()
        
        /* Load a file into the sampler. Here, we demonstrate that in addition
            to using .WAV files, you can also use EXS24 files. EXS24 files
            are sample files used in Logic Pro's EXS24 sampler. Check out some
            of the sample files you can use here: 
         http://www.logic-cafe.com/lc/index.php/free-downloads/exs24-instruments
            
            You can also load in a Sound Font file by using 
            `sampler.loadSoundFont`. If you're not familiar with Sound Fonts, 
            the Wikipedia page gives a good overview: 
            https://en.wikipedia.org/wiki/SoundFont */
        
        ///Program can't seem to find this file
//        sampler.loadEXS24("sawPiano1")
        sampler.loadWav("fmpia1")
        
        //Create a reverb, and run our sampler through it
        let reverb = AKCostelloReverb(sampler)
        AudioKit.output = reverb

        /*Initialize our sequencer. We give it the name of the MIDI file we 
            want to use to play our sequence. */
        
        sequencer = AKSequencer(filename: "4tracks")

        //Set the length of our sequence in beats
        sequencer.setLength(4)
        
        //Allow our sequence to loop 
        sequencer.enableLooping()
        
        
        ///Aure, do we need this line?
//        sequencer.setGlobalAVAudioUnitOutput(sampler.samplerUnit)

        //Start AudioKit, and the sequencer
        AudioKit.start()
        sequencer.play()
    }
}

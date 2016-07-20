//
//  Sequencer.swift
//  SimpleSequences
//
//  Created by Nicholas Arner on 5/20/16.
//  Copyright © 2016 University of York Department of Electronics 
//

import AudioKit

public class SequencerInstrument {
    
    //Create variable to store our Sequencer
    var sequencer: AKSequencer
    
    init() {
        
        //Create our sampler
        let sampler = AKSampler()
        
        /* Load a file into the sampler. Here, we demonstrate that in addition
            to using .WAV files, you can also use EXS24 files. EXS24 files
            are sample files used in Logic Pro's EXS24 sampler. In the left side
            panel, you'll see that we also have a "basicSamples" folder, which 
            are small audio files used by the EXS file. Check out some
            of the sample files you can use here: 
         http://www.logic-cafe.com/lc/index.php/free-downloads/exs24-instruments
            
            You can also load in a Sound Font file by using 
            `sampler.loadSoundFont`. If you're not familiar with Sound Fonts, 
            the Wikipedia page gives a good overview: 
            https://en.wikipedia.org/wiki/SoundFont */
        
        //Comment/uncomment these lines to load the sample that you want to use
        sampler.loadEXS24("Sounds/sawPiano1")
//        sampler.loadWav("Sounds/fmpia1")
        
        //Create a reverb, and run our sampler through it
        let reverb = AKCostelloReverb(sampler)
        AudioKit.output = reverb

        /*Initialize our sequencer. We give it the name of the MIDI file we 
            want to use to play our sequence. */
        sequencer = AKSequencer(filename: "4tracks", engine: AudioKit.engine)
        
        //Set the length of our sequence in beats
        let duration = AKDuration(beats:4)
        sequencer.setLength(duration)
        
        //Allow our sequence to loop 
        sequencer.enableLooping()

        //Start AudioKit, and the sequencer
        AudioKit.start()
        sequencer.play()
    }
}

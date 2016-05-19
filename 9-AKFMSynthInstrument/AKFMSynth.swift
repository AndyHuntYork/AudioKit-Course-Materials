//
//  AKFMSynthInstrument.swift
//  AKFMSynthInstrument
//
//  Created by Nicholas Arner on 5/18/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import AudioKit

public class AKFMSynthInstrument {
    
    var fmSynth: AKFMSynth
    
    init() {
        
    /*  Create an instance of the AKFMSynth class. You'll see that we're 
        initializing it with a voice count of three. The number of
        voices corresponds to how many notes our instrument can play. If you 
        don't give this value the number of voices you want, and try to play
        too many notes, you won't hear all the notes you're expecting to hear. */
        fmSynth = AKFMSynth(voiceCount: 3)
        AudioKit.output = fmSynth
        AudioKit.start()
    }

    /* These are the functions that will play the notes of our instrument. Each
        method calls the `playNote` function. That function expects two 
        arguments: the value of the MIDI note we want to play, and the velocity 
        we want the note to play at. Try experimenting with different note
        and velocity values for yourself. You can find a list of how MIDI note
        values correspond to musical notes here: 
        http://www.electronics.dit.ie/staff/tscarff/Music_technology/midi/midi_note_numbers_for_octaves.htm 
        Additionally, try experimenting with changing the velocity value, and 
        hear how it affects the sound */
 
    public func playC() {
        fmSynth.playNote(48, velocity: 50)
    }
    
    public func playE() {
        fmSynth.playNote(52, velocity: 50)
    }
    
    public func playG() {
        fmSynth.playNote(55, velocity: 50)
    }
    
    
    //These are the functions that will stop the notes of our instrument.
    public func stopC() {
        fmSynth.stopNote(48)
    }
    
    public func stopE() {
        fmSynth.stopNote(52)
    }
    
    public func stopG() {
        fmSynth.stopNote(55)
    }
}

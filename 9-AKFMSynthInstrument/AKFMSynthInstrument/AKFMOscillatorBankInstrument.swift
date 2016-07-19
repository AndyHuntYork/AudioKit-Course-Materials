//
//  AKFMSynthInstrument.swift
//  AKFMSynthInstrument
//
//  Created by Nicholas Arner on 5/18/16.
//  Copyright © 2016 University of York Department of Electronics
//

import AudioKit

public class AKFMOscillatorBankInstrument {
    
    var fmSynth: AKFMOscillatorBank
    
    init() {
        
        /*  Create an instance of the AKFMOscillatorBank
         (http://audiokit.io/docs/Classes/AKFMOscillatorBank.html) class. This
         class allows for the creation of a polyphonic FM oscillator. There
         are several more parameters to the AKFMOscillatorBank class that aren't
         implemented in this example; please feel free to explore them by adding
         your own UI elements to control them! */
        
        fmSynth = AKFMOscillatorBank()
        
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
        fmSynth.play(noteNumber: 48, velocity: 50)
    }
    
    public func playE() {
        fmSynth.play(noteNumber: 52, velocity: 50)
    }
    
    public func playG() {
        fmSynth.play(noteNumber: 55, velocity: 50)
    }
    
    
    //These are the functions that will stop the notes of our instrument.
    public func stopC() {
        fmSynth.stop(noteNumber: 48)
    }
    
    public func stopE() {
        fmSynth.stop(noteNumber: 52)
    }
    
    public func stopG() {
        fmSynth.stop(noteNumber: 55)
    }
}

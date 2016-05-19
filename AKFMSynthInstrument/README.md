This is example is intended as a stepping-off point for students wanting to learn how the AudioKit [AnalogSynthX app](http://audiokit.io/gallery/)
operates. 

Specifically, we're moving on from audio file play-back, looping, mixing, effects such as reverb, and sequencing, to showing how 
you can use some of AudioKit's existing [Instrument classes](http://audiokit.io/docs/Instruments.html) to build a synthesizer app
of your own. 

This example uses the [AKFMSynth class](http://audiokit.io/docs/Instruments.html#/s:C8AudioKit9AKFMSynth). `AKFMSynth` is a wrapper class
around `AKFMOscillator`(http://audiokit.io/docs/Classes/AKFMOscillator.html) that allows you to create multiple "voices" in a synth. 
If you're not familiar with the concept of voices in a synthesizer, they're essentially the number of oscillators you have at your disposal.
So, if we gave our `AKFMSynth` three voices (as we do in this example), we'd be able to control three oscillators:

```
//code
```

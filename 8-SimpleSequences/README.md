# Simple Sequences

Sequences are a powerful feature in AudioKit. `AKSequencer` let you define musical events through an 
imported MIDI file, and use audio samples as the source material for the sequence

This example shows how sequences can be played-back, but there is quite a lot to explore beyond this 
example (such as changing tempo, adding pre-roll, rewinding, etc), so I highly encourage you to read 
the [documentation](http://audiokit.io/docs/Classes/AKSequencer.html) and check out the Sequencer 
playgrounds:

[Sequencer Single Output](http://audiokit.io/playgrounds/Sequencer%20-%20Single%20output/)
[Sequencer Multiple Output](http://audiokit.io/playgrounds/Sequencer%20-%20Multiple%20output/)

NOTE 1: When running this example, you will probably see an error log in the console that says 
something along the lines of "ERROR:    912: Invalid beat range or track is empty". This is normal, 
and is coming from deep within Apple Core Audio - level code. 

NOTE2 : AudioKit Sequences are under active development. Please, if you find a bug at all, let us
know on [GitHub Issues](https://github.com/audiokit/AudioKit/issues). If you have any questions 
at all, please feel free to post on the [AudioKit Google Group](https://groups.google.com/forum/#!forum/audiokit).
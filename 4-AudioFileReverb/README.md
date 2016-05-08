# AudioFileReverb

The AudioFileReverb app demonstrates how to play an audio file.

The documentation for `AKReverb` can be found [here](http://audiokit.io/docs/Classes/AKReverb.html). 
There are actually six different types of reverb effects in AudioKit, so be sure to check them out 
as well! [AudioKit Reverb Type list](http://audiokit.io/docs/Reverb%20Nodes.html).

It's possible to chain audio effects together in AudioKit. If you wanted to add a delay to your 
reverberated audio, you could add the code below where the reverb's `dryWetMix` parameter is set:

```
let delay = AKDelay(reverb)
delay.time = 0.01 // seconds
delay.feedback  = 0.9 // Normalized Value 0 - 1
delay.dryWetMix = 0.6 // Normalized Value 0 - 1
```

Make sure that AudioKit's output is now set to `delay` instead of `reverb`:

`AudioKit.output = delay`

There are two types of delay effects in AudioKit, including `AKDelay`. You can find the documentation
for them [here](http://audiokit.io/docs/Delay%20Nodes.html).

Additionally, AudioKit has several other types of audio effects, including:

[Filters](http://audiokit.io/docs/Filter%20Nodes.html)
[Distortion units](http://audiokit.io/docs/Distortion%20Nodes.html)
[Dynamic processors](http://audiokit.io/docs/Dynamics%20Nodes.html)

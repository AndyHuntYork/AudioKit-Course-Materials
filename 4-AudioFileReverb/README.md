# AudioFileReverb

The AudioFileReverb app demonstrates how to play an audio file.

The documentation for `AKReverb` can be found [here](http://audiokit.io/docs/Classes/AKReverb.html).

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

The documentation for `AKDelay` can be found [here](http://audiokit.io/docs/Classes/AKDelay.html). 
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

Probably about now, you're starting to get tired of making a change to your project, re-compiling, 
and testing. That's totally understandable...and that's what Playgrounds are for :)

Playgrounds allow you to try out Swift code without having to re-compile everytime you change 
something. To put another way, you can try changing things in your code, and see (or in our case, 
hear) the results instantly. In this specific case, if you want to hear what this project sounds like
with different values for your reverb or delay paraameters, you could experiemnt with different 
values in a Playground and hear the results instantly. 

AudioKit Playgrounds are great for rapid sound-design and audio prototyping. Any AudioKit code you 
create in a Playground can be used in an app, and vice-versa. So, if you're experimenting with trying to find a specific sound you want for your app, you can try things out in 
Playgrounds until you're satisfied you have the right sound. You can then copy that code over to your
app, and hook it up to whatever interface elements you want to use. 

The AudioKit website has a whole section devoted to [Playgrounds](http://audiokit.io/playgrounds/). 
Here, you’ll find not links to not only the code for these Playgrounds, but also videos 
demonstrating their usage. At the bottom of the Playgrounds page (the link above), you'll find a 
video that walks you through how to get set-up with using Playgrounds. 

If you have any questions on Playgrounds (or anything else involving AudioKit, for that matter), 
please feel free to post to the [AudioKit forum](groups.google.com/forum/#!forum/audiokit).


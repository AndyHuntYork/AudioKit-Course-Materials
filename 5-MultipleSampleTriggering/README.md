# Multiple Sample Triggering

This app demonstrates how you can use multiple instances of `AKAudioPlayer` to trigger audio samples.

Our `AudioSampler.swift` class contains three instances of `AKAudioPlayer`. Each player will play a 
different audio sample 

The documentation for `AKAudioPlayer` can be found [here](http://audiokit.io/docs/Classes/AKAudioPlayer.html). 


`AKAudioPlayer` has a `looping` property that will loop the audio file until it's told to stop. By 
default, this property is set to `false`. 

So, for this project, all the `AKAudioPlayer` instances are set to loop:

```
playerOne.looping   = true
playerTwo.looping   = true
playerThree.looping = true
```

This can be changed by simply setting the `looping` properties to be `false`:

```
playerOne.looping   = false
playerTwo.looping   = false
playerThree.looping = false
```

It's not possible to change these values "on the fly", so you'll need to decide before you run the
app whether or not you want your `AKAudioPlayer` instance to loop your sample, or to only play it
once when triggered. 


Similar to some of the other examples you've seen so far, we'll rely on `UIButton`s to control our 
sampling instrument. Whenever we press a button, we'll tell our `AudioSampler` class that we want 
the corresponding `AKAudioPlayer` instance to play:


```
@IBAction func toggleSampleOne(sender: AnyObject) {
	audioSampler.stopOrPlaySampleOne()
}
```

So, whenever the 

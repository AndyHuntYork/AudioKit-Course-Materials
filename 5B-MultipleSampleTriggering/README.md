# Multiple Sample Triggering

This app demonstrates how you can use multiple instances of `AKAudioPlayer` to trigger audio samples.

Our `AudioSampler.swift` class contains three instances of `AKAudioPlayer`. Each player will play a 
different audio sample 

The documentation for `AKAudioPlayer` can be found [here](http://audiokit.io/docs/Classes/AKAudioPlayer.html). 

It's not possible to change these values "on the fly", so you'll need to decide before you run the
app whether or not you want your `AKAudioPlayer` instance to loop your sample, or to only play it
once when triggered. 


Similar to some of the other examples you've seen so far, we'll rely on `UIButton`s to control our 
sampling instrument. Whenever we press a button, we'll tell our `AudioSampler` class that we want 
the corresponding `AKAudioPlayer` instance to call the class method that controls our sampler's 
playback:


```
@IBAction func toggleSampleOne(sender: AnyObject) {
	audioSampler.stopOrPlaySampleOne()
}
```

The `stopOrPlaySampleone()` method will either play the audio player's sample (if we're not playing 
it already), or to stop playing it (if we ARE playing it already). 

We first check to see if our audio player is playing. We also check whether or not our player's `
playhead` (where in at in the audio file the player is currently at) is less than the total length 
of the audio file. So, if we push our button while the audio file is stopped, it will start playing. 
If we press it again, it will start playing from the beginning of the track. */

```
public func stopOrPlaySampleOne() {
                
    if playerOne.isPlaying && playerOne.playhead < playerOne.duration {
        playerOne.stop()
    } else {
        playerOne.play()
    }
        
    //This will print out the current time value of the audio file
    print(playerOne.playhead)
}
```

This project also demonstrates how you can change whether or not your audio sample is looped or 
not. `AKAudioPlayer` has a `looping` property that will loop the audio file until it's told to stop. 
By default, this property is set to `false`. 

To change whether or not we want our samples to loop, we're going to use three 
`UISegmentController`s in our storyboard; one for each sampler. A `UISegmentControl` allows the user
to select between one of two states. In our case, we'll select whether or not a sampler's `looping` 
property is `true` or `false`.

To access the value of which segment is currently selected from our segment controllers, we create 
three outlets, one for each segment controller:

```
@IBOutlet var playerOneLoopControl: UISegmentedControl!
@IBOutlet var playerTwoLoopControl: UISegmentedControl!
@IBOutlet var playerThreeLoopControl: UISegmentedControl!
```

Next, we create three `IBAction` methods. These methods should look familiar to you...they're what
we used earlier to detect whether or not a button was pressed. These methods are called every time
the user selects a different segment of the corresponding `UISegmentController`.

Let's look at our first `IBAction`, `playerOneLoopingValueChanged`, which will change the `looping`
value of `playerOne`:

```
@IBAction func playerOneLoopingValueChanged(sender: AnyObject) {
    audioSampler.playerOne.stop()
    if playerOneLoopControl.selectedSegmentIndex == 0 {
    	audioSampler.playerOne.looping = false
    } else {
    	audioSampler.playerOne.looping = true
    }
}
```

The first thing you'll notice is that we stop playing `playerOne`. This is related to the "under the 
hood mechanics" of how `AKAudioPlayer` works --- it won't recognize the new value for its `looping` 
property until it stops playing. 

We then check the value of our segment controller's `selectedSegementIndex`. `selectedSegmentIndex` 
is simply which toggle the user selected --- "0" is the first toggle, and "1" is the second toggle. 

If the first toggle is selected, then we won't loop the audio file. If the second toggle is 
selected, then we will loop the audio file. 

Once you've selected what you want your loop value to be, go ahead and play the audio sample again, 
and see what happens!

# NOTE: 
Currently, `AKAudioPlayer` works best with audio clips that are 44.1K stereo. This is due
to a known bug that will be resolved in a future version of AudioKit. 

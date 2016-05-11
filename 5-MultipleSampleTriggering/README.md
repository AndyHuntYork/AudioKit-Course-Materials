# Multiple Sample Triggering

This app demonstrates how you can use multiple instances of `AKAudioPlayer` to trigger audio samples.

Out of the box, all the `AKAudioPlayer` instances are set to loop:

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
instrument. 
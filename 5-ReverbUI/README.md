# Reverb-UI

The AudioFileReverb app demonstrates how to play an audio file, and affect that file with 
reverb controlled through a `UISlider`.

It's intended to provide students with a gentle introduction to topics such as classes, 
instantiation, method calls, and value passing, while continuing to reinforce basic AudioKit 
concepts. 

Instead of creating our instrument in our View Controller, as in previous examples, this example
illustrates how to create our instrument in a separate class, `ReverbAudioPlayer.swift`. This class 
contains and audio looper to play our audio file, and a reverb unit to add reverb to our audio file. 

An instance of this class is instantiated in our View Controller:

`reverbAudioPlayer = ReverbAudioPlayer()`

When we instantiate a class, we create one copy of it. In this case, our View Controller has one copy
of our `ReverbAudioPlayer` class called `reverbAudioPlayer`. 

The `ReverbAudioPlayer` class has three functions that we will call from our View Controller:

```
public func startSound()
public func stopSound()
public func setReverbMixValue(reverbMixValue: Float)
```

These functions are called whenever we interact with our UIElements. Whenever we press the "On/Off" 
button, the `toggleSound` method will call our `startSound` and `stopSound` functions, which turn
our audio player on and off based on whether or not hte sound is currently playing.

While a bit more complex in terms of structure, nothing new as far as AudioKit is introduced. 
However, if students are able to fully understand how this example works, they will be well-prepared
to dive into more the more complex examples that are included in the AudioKit repository.

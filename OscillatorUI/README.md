# Ocillator UI

This app demonstrates how to change and display values of an AudioKit oscillator using standard
Apple User Interface elements.  

An `AKOscillator` instance is turned on and off using two `UIButton`s. The oscillator's amplitude and
frequency values are changed using `UISlider`s, and their values are displayed using `UILabel`s. 

As a beginner exercise, the student is encouraged to determine how to use a single `UIButton` as a 
toggle switch to turn the oscillator on and off, rather than using two `UIButton`s.

The code below demonstrates how you can determine if an oscillator is playing by detecting the 
`bool` value of `AKOscillator`'s `isStarted' property. When the `UIButton` is pressed, the oscillator
will stop if `isStarted` is `true`, and the oscillator will start playing if `isStarted` is `false.`

```
if oscillator.isStarted == true {
	oscillator.stop()
	} else if oscillator.isStopped == true {
   	oscillator.start()
}
```
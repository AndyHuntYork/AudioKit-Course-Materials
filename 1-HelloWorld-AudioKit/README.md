# HelloWorld-AudioKit

The Hello World app demonstrates how to make a simple oscillator using AudioKit. 

The default value for `AKOscillator` is 440, or A above middle C, and the default amplitude value is
1. Try changing the amplitude and frequency of the oscillator yourself by adding the lines below 
at line 21 inside of your `ViewController.swift` file. 

```
oscillator.amplitude =  0.25
oscillator.frequency =  880
```

AudioKit's [AKOscillator](http://audiokit.io/docs/Oscillator%20Nodes.html#/s:C8AudioKit12AKOscillator) can use several different types of waveforms. These waveforms are created using [AKTable](http://audiokit.io/docs/Structs/AKTable.html). There are 11 waveform table types. The documentation on [AKTableType](http://audiokit.io/docs/Enums/AKTableType.html) has the complete list. 


So, if you wanted 'AKOscillator' to use a Sawtooth waveform, you would use the following code:

```
let sawtooth = AKTable(.Sawtooth, size: 4096)
var oscillator = AKOscillator(waveform: sawtooth)
AudioKit.output = oscillator
AudioKit.start()
```

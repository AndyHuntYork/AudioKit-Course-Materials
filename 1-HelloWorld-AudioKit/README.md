# HelloWorld-AudioKit

The Hello World app demonstrates how to make a simple oscillator using AudioKit. 

The default value for `AKOscillator` is 440, or A above middle C, and the default amplitude value is
1. Try changing the amplitude and frequency of the oscillator yourself by adding the lines below 
at line 21 inside of your `ViewController.swift` file.

```
oscillator.amplitude =  0.25
oscillator.frequency =  880
```

The documentation for `AKOscillator` can be found [here](http://audiokit.io/docs/Classes/AKOscillator.html);

AudioKit has [six different oscillators types](http://audiokit.io/docs/Oscillator%20Nodes.html). Try 
substituting a different one in-place of `AKOscillator`. For example, to change the oscillator from 
an `AKOscillator` type to an `AKSawtoothOscillator`, you would change line 16 in
`ViewController.swift` from 

`var oscillator = AKOscillator()`

to

`var oscillator = AKSawtoothOscillator()`
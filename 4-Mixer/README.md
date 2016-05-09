# Mixer

The Mixer app demonstrates how to use user-interface elements to control the volume of four
audio tracks.

`AKMixer` is the AudioKit implementation of Apple's Mixer node. The documentation for `AKMixer` can 
be found [here](http://audiokit.io/docs/Classes/AKMixer.html). 

The mixer in our example accepts input from four `AKAudioPlayer` instances. Each player corresponds
to a different audio track: a drums track, a bass track, a guitar track, and a lead guitar track... 

```
//Create a mixer that uses our audio loops as inputs
let mixer = AKMixer(drums, bass, guitar, lead)
```

In addition to controlling the volume of individual tracks, as shown in this example, you can also
control the pan position of an individual audio track. To implement this, you would follow the method
of using sliders to call `IBAction` methods, which would in-turn call a function to set the pan 
volume. The functions below shows how you would do set the pan position for the drum track:

```
@IBAction func setDrumsPan(sender: AnyObject) {
     audioMixer.setDrumsPanPosition(drumsPanSlider.value)
     drumsPanLabel.text = String(format: "%0.2f", audioMixer.drums.pan)
 }


public func setDrumsPanPosition(drumsPan: Float){
      drums.pan = Double(drumsPan)
  }
```

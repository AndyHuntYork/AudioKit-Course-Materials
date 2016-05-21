//
//  ViewController.swift
//  AudioFilePlayback
//
//  Created by Nicholas Arner on 4/28/16.
//  Copyright © 2016 University of York Department of Electronics (Coded by Nick Arner)
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* The line below lets us access the our app's bundle. A bundle is used 
        to organize code, frameworks, and resources such as image or audio files */
        let bundle = NSBundle.mainBundle()
        /* This line creates a variable to store our wav file. It will be used as
        an input for the audio player created next...*/
        let file = bundle.pathForResource("mixloop", ofType: "wav")
        
        /* Create an insance of AKAudioPlayer. AKAudioPlayer requires an audio file
        to be provided */
        let player = AKAudioPlayer(file!)
        
        /*"looping" is a property of AKAudioFilePlayer. If set to True, the
        audio will loop. If set to False, the player will stop when it reaches the
        end of the audio file */
        player.looping = true
        
        AudioKit.output = player
        AudioKit.start()
        player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


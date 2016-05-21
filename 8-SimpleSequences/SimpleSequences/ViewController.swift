//
//  ViewController.swift
//  SimpleSequences
//
//  Created by Nicholas Arner on 5/14/16.
//  Copyright © 2016 Nicholas Arner. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    var sequencer = SequencerInstrument!()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sequencer = SequencerInstrument()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


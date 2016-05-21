//
//  ViewController.swift
//  SimpleSequences
//
//  Created by Nicholas Arner on 5/14/16.
//  Copyright © 2016 University of York Department of Electronics (Coded by Nick Arner)
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    /*  Create a variable, sequencer, whose type is our SequencerInstrument. Since we're in the view controller, we make this variable optional... since properties of a class have to be initialized upon creation, we add the "?", which tells the compiler that this variable may be nil, or may be a SequencerInstrument. As the Sequencer has not been created yet, it will be nil until it's created in viewDidLoad */
    var sequencer: SequencerInstrument?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Here's where the sequencer is created
        sequencer = SequencerInstrument()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by Unknown on 21/08/19.
//  Copyright © 2019 Nalfian. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    
    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var raderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL : URL!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        print("Play")
    }

    @IBAction func stopButton(_ sender: AnyObject) {
        print("Stop")
    }
    
}

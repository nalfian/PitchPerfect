//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Unknown on 20/08/19.
//  Copyright © 2019 Nalfian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecord: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecord.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordLabel.text = "Record in Progress"
        recordButton.isEnabled = false
        stopRecord.isEnabled = true
    }
    
    @IBAction func stopRecord(_ sender: Any) {
        recordLabel.text = "Tap to Record"
        recordButton.isEnabled = true
        stopRecord.isEnabled = false
    }
    
}


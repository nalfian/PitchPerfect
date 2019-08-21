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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordLabel.text = "Record in Progress"
    }
    
    @IBAction func stopRecord(_ sender: Any) {
        recordLabel.text = "Tap to Record"
    }
    
}


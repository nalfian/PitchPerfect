//  PitchPerfect
//
//  Created by Unknown on 20/08/19.
//  Copyright © 2019 Nalfian. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecord: UIButton!
    
    var audioRecorder : AVAudioRecorder!
    
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
        recordNow()
    }
    
    func recordNow() {
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let recordName = "recordedVoice.wav"
        let pathArray = [dirPath, recordName]
        let filePath = URL(string: pathArray.joined(separator: ""))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
    }
    
    @IBAction func stopRecord(_ sender: Any) {
        recordLabel.text = "Tap to Record"
        recordButton.isEnabled = true
        stopRecord.isEnabled = false
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
}


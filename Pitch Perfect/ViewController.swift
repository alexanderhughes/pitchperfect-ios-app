//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Alexander Hughes on 6/15/15.
//  Copyright (c) 2015 Alexander Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stopButton: UIButton!

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        //TODO: record user's voice
        println("Recording in progress")
        stopButton.hidden = false
        recordButton.enabled = false
        stopButton.enabled = true
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.enabled = false
        recordButton.enabled = true
    }
}


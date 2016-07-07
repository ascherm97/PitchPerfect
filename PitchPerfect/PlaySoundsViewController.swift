//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Michel Jordan Valencia Rangel on 7/6/16.
//  Copyright © 2016 Michel Jordan Valencia Rangel. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {


    @IBOutlet weak var slowButton: UIButton!
    @IBOutlet weak var fastButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    var recordedAudioURL: NSURL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!

    enum ButtonType: Int {case Slow = 0, Fast, Chipmunk,
                          Vader, Echo, Reverb }

    override func viewWillAppear(animated: Bool) {
        configureUI(.NotPlaying)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print (recordedAudioURL)
        print("I got here")
        setupAudio()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        print("\(sender.currentTitle) Pressed")
    }


}

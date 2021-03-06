//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Michel Jordan Valencia Rangel on 7/7/16.
//  Copyright © 2016 Michel Jordan Valencia Rangel. All rights reserved.
//

import UIKit
import AVFoundation

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
    var stopTimer: Timer!
    
    enum ButtonType: Int {case Slow = 0, Fast, Chipmunk,
        Vader, Echo, Reverb }
    override func viewWillAppear(_ animated: Bool) {
//        configureUI(playState: .NotPlaying)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print (recordedAudioURL)
        setupAudio()
        print("I got here")
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
                switch ButtonType(rawValue: sender.tag)! {
                    case .Slow:
                        playSound(rate : 0.50)
                    case .Fast:
                        playSound(rate : 1.50)
                    case .Chipmunk:
                        playSound(pitch: 1000)
                    case .Vader:
                        playSound(pitch: -1000)
                    case .Echo:
                        playSound(echo: true)
                    case .Reverb:
                        playSound(reverb: true)
                }
                configureUI(playState: .Playing)
        print("\(sender.titleLabel) Pressed")
    }
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        print("Stop Button Pressed")
        stopAudio()
    }
}

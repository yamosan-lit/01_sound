//
//  ViewController.swift
//  Sound
//
//  Created by 八森聖人 on 2022/04/30.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButon() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
}


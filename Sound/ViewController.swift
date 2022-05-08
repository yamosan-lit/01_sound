//
//  ViewController.swift
//  Sound
//
//  Created by 八森聖人 on 2022/04/30.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {
    // Sounds
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Drum
    @IBOutlet var drumButton: UIButton!
    @IBAction func touchDownDrumButton() {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    // Piano
    @IBOutlet var pianoButton: UIButton!
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButon() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    // Guitar
    @IBOutlet var guitarButton: UIButton!
    @IBAction func touchDownGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)

        guitarSoundPlayer.currentTime = 0

        guitarSoundPlayer.play()
    }

    @IBAction func touchUpGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
}


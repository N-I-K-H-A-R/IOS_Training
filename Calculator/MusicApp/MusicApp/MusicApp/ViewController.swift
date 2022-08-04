//
//  ViewController.swift
//  MusicApp
//
//  Created by user225488 on 7/26/22.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        
        var letter:String = (sender.titleLabel?.text)!
        
        playSound(letter)
        
    }
    
    func playSound(_ letter: String) {
        let url = Bundle.main.url(forResource: "\(letter)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        print(letter)
    }
}


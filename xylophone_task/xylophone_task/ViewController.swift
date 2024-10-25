//
//  ViewController.swift
//  xylophone_task
//
//  Created by Ganiya Nursalieva on 19.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    private var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func ButtonPressed(_ sender: UIButton) {
        //используем теги
        let buttonTag = sender.tag
        let soundFileName = String(buttonTag)
        
        //воспроизводим файл
        guard let urlForSound = Bundle.main.url(forResource: soundFileName, withExtension: "wav") else {
            return
        }
        do {
            // Используем правильный инициализатор AVAudioPlayer
            player = try AVAudioPlayer(contentsOf: urlForSound)
            player?.play()
        } catch {
            print("Error")
        }
    }
}


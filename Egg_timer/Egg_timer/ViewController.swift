

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var softBoiled: UIButton!
    @IBOutlet weak var mediumBoiled: UIButton!
    @IBOutlet weak var HardBoiled: UIButton!
    
    var timer: Timer?
        var totalTime: Int = 0
        var secondsPassed: Int = 0
        var audioPlayer: AVAudioPlayer?
    enum EggType: Int {
           case softBoiled = 3
           case mediumBoiled = 5
           case hardBoiled = 7
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
    }
    
    @IBAction func softBoiledTapped(_ sender: UIButton) {
        startTimer(for: .softBoiled)
    }
    @IBAction func mediumBoiledTapped(_ sender: UIButton) {
        startTimer(for: .mediumBoiled)
    }
    @IBAction func hardBoiledTapped(_ sender: UIButton) {
        startTimer(for: .hardBoiled)
    }
    func startTimer(for eggType: EggType) {
            timer?.invalidate()
            secondsPassed = 0
            totalTime = eggType.rawValue
        
        switch eggType {
                case .softBoiled:
                    titleLabel.text = "soft boiled egg"
                case .mediumBoiled:
                    titleLabel.text = "medium boiled egg"
                case .hardBoiled:
                    titleLabel.text = "hard boiled egg"
                }
        progressBar.progress = 0.0
                timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
            }
    
    @objc func updateProgress() {
            if secondsPassed < totalTime {
                secondsPassed += 1
                let progressFraction = Float(secondsPassed) / Float(totalTime)
                progressBar.progress = progressFraction
            } else {
                timer?.invalidate()
                titleLabel.text = "DONE!"
                playAlarm()
            }
        }
        func playAlarm() {
            guard let path = Bundle.main.path(forResource: "alarm", ofType: "mp3") else { return }
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("error")
            }
        }
}


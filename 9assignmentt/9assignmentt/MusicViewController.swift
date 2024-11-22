//
//  MusicViewController.swift
//  9assignmenttttt
//
//  Created by Ganiya Nursalieva on 22.11.2024.
//

import Foundation
import UIKit

class MusicViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Music {
           var albumTitle: String
           var artist: String
           var imageName: String
       }
    
    @IBOutlet weak var tableView: UITableView!
    let music = [
           Music(albumTitle: "Dancing queen", artist: "ABBA", imageName: "abba"),
           Music(albumTitle: "BEN", artist: "Michael Jackson", imageName: "ben"),
           Music(albumTitle: "BE", artist: "BTS", imageName: "be"),
           Music(albumTitle: "Protect Ya Neck", artist: "Wu-Tang Clan", imageName: "wu"),
           Music(albumTitle: "Die for you", artist: "The Weeknd", imageName: "ari"),
           Music(albumTitle: "Sherlock", artist: "Shinee", imageName: "sherlock"),
           Music(albumTitle: "Softcore", artist: "The neighbourhood", imageName: "the"),
           Music(albumTitle: "Hate the other side", artist: "juice WRLD", imageName: "world"),
           Music(albumTitle: "Stan", artist: "Eminem", imageName: "stan"),
           Music(albumTitle: "Rasputin", artist: "Boney M", imageName: "m"),
           Music(albumTitle: "I wanna love you", artist: "AKON", imageName: "akon")
       ]
           
       override func viewDidLoad() {
           super.viewDidLoad()
           tableView.dataSource = self
           tableView.delegate = self
       }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return music.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as? MusicCell else {
               return UITableViewCell()
           }

           let album = music[indexPath.row]

           cell.titleLabel.text = album.albumTitle
           cell.artistLabel.text = album.artist
           cell.musicImageView.image = UIImage(named: album.imageName)

           return cell
       }

       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       }
   }

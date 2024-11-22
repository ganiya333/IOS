//
//  MoviesViewController.swift
//  9assignmenttttt
//
//  Created by Ganiya Nursalieva on 22.11.2024.
//
import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    struct Movie {
        var title: String
        var year: String
        var imageName: String
    }
    @IBOutlet weak var tableView: UITableView!
    
    let movies = [
            Movie(title: "Inception", year: "2010", imageName: "100"),
            Movie(title: "Game og Thrones", year: "2014", imageName: "gameof"),
            Movie(title: "The Walking dead", year: "2008", imageName: "twd"),
            Movie(title: "The Kingdom of the Planet of the Apes", year: "2008", imageName: "apes"),
            Movie(title: "Spider-Man", year: "2008",  imageName: "spider"),
            Movie(title: "The Karate Kid", year: "2008",imageName: "karate"),
            Movie(title: "The Hunger Games", year: "2008",  imageName: "games"),
            Movie(title: "The Maze Runner", year: "2008",imageName: "maze"),
            Movie(title: "Sherlock", year: "2010",imageName: "sherlock"),
            Movie(title: "The Dark Knight", year: "2008", imageName: "100")
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movies.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieCell else {
                return UITableViewCell()
            }

            let movie = movies[indexPath.row]
            
            cell.titleLabel.text = movie.title
            cell.yearLabel.text = movie.year
            cell.movieImageView.image = UIImage(named: movie.imageName)

            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        }
    }

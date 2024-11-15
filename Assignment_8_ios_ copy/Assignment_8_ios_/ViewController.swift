import UIKit

struct Book {
    let title: String
    let year: String
    let cover: UIImage
    let description: String
}


class ViewController: UIViewController {
        let favouriteBooks: [Book] = [
               Book(title: "Game of Thrones", year: "2011", cover: UIImage(named: "movie1") ?? UIImage(), description: "Game of Thrones expands beyond its power struggles to showcase the vast, morally complex world of Westeros and Essos. The series highlights the ambitions of key families like the Starks, Lannisters, and Targaryens while weaving together themes of honor, betrayal, loyalty, and ambition. Magic and prophecy, such as the return of dragons and the ominous threat of the Night King, play pivotal roles, creating a rich, unpredictable story with unforgettable battles and character arcs."),
               Book(title: "The Walking Dead", year: "2010", cover: UIImage(named: "movie2") ?? UIImage(), description: "he Walking Dead evolves from its focus on survival horror into an examination of human resilience and rebuilding society in a broken world. Characters face moral dilemmas and leadership challenges, with some losing their humanity while others find hope. As communities form, conflict with rival factions like the Saviors and Whisperers drives much of the drama, showcasing how even in the apocalypse, the greatest threats can come from other survivors."),
               Book(title: "The 100", year: "2014", cover: UIImage(named: "movie3") ?? UIImage(), description: "The 100 delves into survival and humanity's darker instincts as the characters confront harsh realities on Earth, encountering indigenous groups with their own complex histories and conflicts. Over time, alliances form and break as new challenges arise, including artificial intelligence threats and nuclear crises. The series explores how far people will go for survival and the consequences of their choices, offering a gritty look at human nature under pressure."),
               Book(title: "Lost", year: "2004", cover: UIImage(named: "movie1") ?? UIImage(), description: "Lost is renowned for its character-driven storytelling, blending survival drama with sci-fi twists and psychological suspense. The series deepens the mystery with flash-forwards, flashbacks, and even flash-sideways storytelling to reveal characters' motivations and the island's bizarre occurrences. Its ensemble cast grapples with fate, redemption, and the battle between light and dark forces in a plot that remains captivating and often mind-bending.")
    ]


@IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesTableViewCell
        let book = favouriteBooks[indexPath.row]
        cell.configure(with: book)
        cell.delegate = self
        return cell
    }
}

extension ViewController: MoviesCellDelegate {
    func didTapButton(with book: Book) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "BookDetailViewController") as? BookDetailViewController {
            detailVC.book = book

            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}



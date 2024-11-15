import UIKit

struct Book {
    let title: String
    let year: String
    let cover: UIImage
}

class ViewController: UIViewController {
    let favouriteBooks: [Book] = [
        Book(title: "Game of Thrones", year: "2011", cover: UIImage(named: "movie1") ?? UIImage()),
        Book(title: "The Walking Dead", year: "2010", cover: UIImage(named: "movie2") ?? UIImage()),
        Book(title: "The 100", year: "2014", cover: UIImage(named: "movie3") ?? UIImage()),
        Book(title: "Lost", year: "2004", cover: UIImage(named: "movie4") ?? UIImage())
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
        return cell
    }
}

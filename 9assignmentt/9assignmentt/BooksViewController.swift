//
//  BooksViewController.swift
//  9assignmenttttt
//
//  Created by Ganiya Nursalieva on 22.11.2024.
//

import Foundation
import UIKit

class BooksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Book {
            var title: String
            var author: String
            var genre: String
            var imageName: String
        }
    
    @IBOutlet weak var tableView: UITableView!
    
    let books = [
        Book(title: "The Catcher in the Rye", author: "J. D. Salinger,", genre: "Dystopian", imageName: "rye"),
        Book(title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Fiction", imageName: "mockinbird"),
        Book(title: "1984", author: "George Orwell", genre: "Dystopian", imageName: "1984"),
        Book(title: "Nineteen Eighty-Four", author: "George Orwell", genre: "Dystopian", imageName: "19"),
        Book(title: "The Master and Margarita", author: "Mikhail Bulgakov", genre: "Dystopian", imageName: "master"),
        Book(title: "Gone with the Wind", author: "Margaret Mitchell", genre: "Dystopian", imageName: "gone"),
        Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald,", genre: "Dystopian", imageName: "great"),
        Book(title: "War and Peace", author: "Leo Tolstoy", genre: "Dystopian", imageName: "war"),
        Book(title: "The Hobbit", author: "John Ronald Reuel Tolkien", genre: "Dystopian", imageName: "hobbit"),
        Book(title: "The Picture of dorian Gray", author: "Oscar Wilde", genre: "Dystopian", imageName: "dorian")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as? BookCell else {
            return UITableViewCell()
        }

        let book = books[indexPath.row]
        cell.titleLabel.text = book.title
        cell.authorLabel.text = book.author
        cell.bookImageView.image = UIImage(named: book.imageName)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

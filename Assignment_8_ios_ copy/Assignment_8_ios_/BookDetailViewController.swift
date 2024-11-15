import UIKit

class BookDetailViewController: UIViewController {
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var book: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let book = book {
            descriptionLabel.text = book.description
        } else {
            print("error")
        }

    }
}

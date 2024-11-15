import UIKit

class MoviesTableViewCell: UITableViewCell {
    @IBOutlet weak var ImageV: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var year: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(with book: Book) {
        ImageV.image = book.cover
        title.text = book.title
        year.text = book.year
    }
}

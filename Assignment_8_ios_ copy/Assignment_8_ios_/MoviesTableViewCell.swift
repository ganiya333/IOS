import UIKit
protocol MoviesCellDelegate: AnyObject {
    func didTapButton(with book: Book)
}
class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageV: UIImageView!
    @IBOutlet weak var ButtonV: UIButton!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var year: UILabel!
    
    weak var delegate: MoviesCellDelegate?
    private var book: Book?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
      func configure(with book: Book) {
            self.book = book
            ImageV.image = book.cover
            title.text = book.title
            year.text = book.year
            ButtonV.addTarget(self, action: #selector(showDescriptionTapped), for: .touchUpInside)
        }
    @IBAction func showDescriptionTapped(_ sender: UIButton) {
        print("Кнопка нажата")
        guard let book = book else { return }
        delegate?.didTapButton(with: book)
    }
}

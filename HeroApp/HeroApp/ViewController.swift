import UIKit
import Alamofire
import Kingfisher

struct Hero: Decodable {
    let name: String
    let biography: Biography
    let images: Image
    let powerstats: Powestats
    let appearance: Appearance

    struct Image: Decodable {
        let sm: String
    }

    struct Biography: Decodable {
        let fullName: String
        let alterEgos : String
    }
    struct Powestats: Decodable{
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
        let power: Int
        let combat: Int
    }
    struct Appearance: Decodable{
        let gender: String
        let race: String?
    }
}



class ViewController: UIViewController {

    @IBOutlet private weak var heroName: UILabel!
    @IBOutlet private weak var heroDescription: UILabel!
    @IBOutlet private weak var heroImage: UIImageView!
    @IBOutlet weak var heroInfo: UILabel!
    
    @IBOutlet weak var heroAppearance: UILabel!
    private let api = "https://akabab.github.io/superhero-api/api/all.json"
    private var heroes: [Hero] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func didTapHero(_ sender: Any) {

        if heroes.isEmpty {
            fetchHero()
        } else {
            let randomHero = heroes.randomElement()!
            configure(hero: randomHero)
        }
    }

    private func fetchHeroAsync() async {
        let result = await AF.request(api).serializingDecodable([Hero].self).result
        switch result {
        case .success(let heroes):
            self.heroes = heroes
        case .failure(let error):
            print(error)
        }
    }

    private func fetchHero() {
        AF.request(api).responseDecodable(of: [Hero].self) { response in
            switch response.result {
            case .success(let heroes):
                self.heroes = heroes
            case .failure(let error):
                print(error)
            }
        }
    }

    private func configure(hero: Hero) {
        heroName.text = hero.name
        
        heroDescription.text = hero.biography.fullName
        heroDescription.text = hero.biography.alterEgos
        heroAppearance.text =  hero.appearance.gender
        heroAppearance.text = hero.appearance.race
        
        let powerstatsText = """
            Intelligence: \(hero.powerstats.intelligence)
            Strength: \(hero.powerstats.strength)
            Speed: \(hero.powerstats.speed)
            Durability: \(hero.powerstats.durability)
            Power: \(hero.powerstats.power)
            Combat: \(hero.powerstats.combat)
            """
        
        heroInfo.text = powerstatsText

        heroImage.kf.setImage(with: URL(string: hero.images.sm)) { _ in
                    self.zoomInImage()
                }
    }
    private func zoomInImage() {
            UIView.animate(withDuration: 1.0, animations: {
                self.heroImage.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
}

//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lhsDice: UIImageView!
    @IBOutlet weak var rhsDice: UIImageView!
    
    var diceList : [UIImage] = [UIImage(resource: .diceOne), UIImage(resource: .diceTwo), UIImage(resource: .diceThree), UIImage(resource: .diceFour), UIImage(resource: .diceFive), UIImage(resource: .diceSix) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button(_ sender: UIButton) {
        change_the_dice()
    }
    
    func change_the_dice(){
        
        let lhsIndex = Int.random(in: 0...5)
        var rhsIndex : Int
        repeat{
            rhsIndex = Int.random(in: 0...5)
        } while rhsIndex == lhsIndex
            
        lhsDice.image = diceList[lhsIndex]
        rhsDice.image = diceList[rhsIndex]
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        change_the_dice()
    }
        
    
}

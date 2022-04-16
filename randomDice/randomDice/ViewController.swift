//
//  ViewController.swift
//  randomDice
//
//  Created by Iván Ortega Sotomayor on 10/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var dice1 = 1
    var dice2 = 1
    let allDices = [#imageLiteral(resourceName: "one-310338_1280"), #imageLiteral(resourceName: "two-310337_1280"), #imageLiteral(resourceName: "dice-3-hi"), #imageLiteral(resourceName: "dice-310335_1280"), #imageLiteral(resourceName: "five-310334_1280"), #imageLiteral(resourceName: "dice-310333_1280")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.alpha = 1
        diceImageView2.alpha = 2
        
        dice1 = Int.random(in: 0..<6)
        dice2 = Int.random(in: 0..<6)
        
        diceImageView1.image = allDices[dice1]
        diceImageView2.image = allDices[dice2]
        
    }
    
}


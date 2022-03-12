//
//  ViewController.swift
//  ejercicioClase9_2
//
//  Created by Iván Ortega Sotomayor on 01/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textToMove: UILabel!
    @IBOutlet weak var options: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func whenClick(_ sender: Any) {
        if options.selectedSegmentIndex == 0{
            UIView.animate(withDuration: 1, animations: {
                self.textToMove.frame.origin.x = 50
            })
        }
        else if options.selectedSegmentIndex == 1{
            UIView.animate(withDuration: 1, animations: {
                self.textToMove.frame.origin.x = 300
            })
        }
    }
    
}


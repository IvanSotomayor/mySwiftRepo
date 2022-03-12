//
//  ViewController.swift
//  fahrToCel
//
//  Created by Iván Ortega Sotomayor on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var celsiusTemp: UITextField!
    @IBOutlet weak var fahrenTemp: UITextField!
    
    
    @IBAction func convertTemp(_ sender: Any) {
        let celsius = Double(celsiusTemp.text!)!
        let result = (celsius * 9/5) + 32
        fahrenTemp.text = String(result)
    }
    
}


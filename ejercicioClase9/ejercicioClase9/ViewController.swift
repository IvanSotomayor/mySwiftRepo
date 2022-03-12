//
//  ViewController.swift
//  ejercicioClase9
//
//  Created by Iván Ortega Sotomayor on 01/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    @IBOutlet weak var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checkValues(_ sender: Any) {
        texto.text = "\(sliderValue.value)"
    }
    
}


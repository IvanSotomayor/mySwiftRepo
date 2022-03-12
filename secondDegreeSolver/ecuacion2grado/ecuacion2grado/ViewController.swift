//
//  ViewController.swift
//  ecuacion2grado
//
//  Created by Iván Ortega Sotomayor on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    @IBOutlet weak var valueC: UITextField!

    @IBOutlet weak var root1: UITextField!
    @IBOutlet weak var root2: UITextField!

    @IBAction func resolverEcuacion(_ sender: Any) {
        
        let aValue = Float(valueA.text!)!
        let bValue = Float(valueB.text!)!
        let cValue = Float(valueC.text!)!
        
        if aValue != 0 && bValue != 0 && cValue != 0{
            
            let result1 = (-bValue + (sqrt(pow(bValue, 2) - 4 * aValue * cValue)))/(2 * aValue)
            
            let result2 = (-bValue - (sqrt(pow(bValue, 2) - 4 * aValue * cValue)))/(2 * aValue)
            
            root1.text = String(result1)
            root2.text = String(result2)
            
        }else{
            
            let alert = UIAlertController(title: "Invalido", message: "No puedes poner coeficientes en 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default
            ))
            
            self.present(alert, animated: true, completion: nil)
        }
        
    }
        
    
}


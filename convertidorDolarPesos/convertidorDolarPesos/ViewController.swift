//
//  ViewController.swift
//  convertidorDolarPesos
//
//  Created by Iván Ortega Sotomayor on 25/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tdDolares: UITextField!
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.image = UIImage(named: "dollarSign")
        let tap = UIGestureRecognizer(target: self, action: #selector(quitaTeclado))
        view .addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func quitaTeclado(){
        view.endEditing(true)
    }
    
    @IBAction func calcularDivisas(_ sender: Any) {
        if let tipoCambio = Double(tfTipoCambio.text!), let pesos = Double(tfPesos.text!){
            let dolares = pesos / tipoCambio
            tdDolares.text = String(dolares)
        }else{
            let alerta = UIAlertController(title: "Error", message: "No puedes convertir esa divisa ", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alerta, animated: true, completion: nil)
        }
    }
}


//
//  ViewControllerDetalle.swift
//  tableViewsPractice
//
//  Created by Iván Ortega Sotomayor on 08/03/22.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    var nombre: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNombre.text = nombre

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardarButton(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

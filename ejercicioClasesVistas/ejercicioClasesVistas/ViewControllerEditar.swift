//
//  ViewControllerEditar.swift
//  ejercicioClasesVistas
//
//  Created by Iván Ortega Sotomayor on 01/03/22.
//

import UIKit

class ViewControllerEditar: UIViewController {

    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var nombre : String!
    var email : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

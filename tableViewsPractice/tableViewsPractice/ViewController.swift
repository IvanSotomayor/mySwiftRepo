//
//  ViewController.swift
//  tableViewsPractice
//
//  Created by Iván Ortega Sotomayor on 08/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var lista = ["A", "B", "C", "D","E","F", "G", "H", "I","J","K","L", "M", "N", "O","P"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        celda.textLabel?.text = lista[indexPath.row]
        celda.detailTextLabel?.text = "\(indexPath.row)"
        celda.imageView?.image = UIImage(named: "user")
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDestino = segue.destination as! ViewControllerDetalle
        if let indice = tableView.indexPathForSelectedRow {
            vistaDestino.nombre = lista[indice.row]
        }else{
            vistaDestino.nombre = ""
        }
    }
    
    
    
    
}


//
//  ViewController.swift
//  switchApp
//
//  Created by Iván Ortega Sotomayor on 01/03/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
    }

    
    @IBAction func whenClicked(_ sender: Any) {
        if switchButton.isOn{
            UIView.animate( withDuration: 1, animations: {
                self.view.backgroundColor = UIColor.orange
                
            })
        }else{
            UIView.animate( withDuration: 1, animations: {
                self.view.backgroundColor = UIColor.blue
                
            })
        }
    }
    


}


//
//  ViewController.swift
//  HamburguesasEnElMundo
//
//  Created by Jose Navarro Alabarta on 12/1/16.
//  Copyright © 2016 ai2-upv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!
    let cPais = ColeccionDePaises()
    let cHamburguesa = ColeccionDeHamburguesa ()
    let cColor = Colores()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarEtiqueta(sender: AnyObject) {
        pais.text = cPais.obtenerFraseRandom()
        hamburguesa.text = cHamburguesa.obtenerFraseRandom()
        view.backgroundColor = cColor.obtenerColorRandom()
        
    }

}


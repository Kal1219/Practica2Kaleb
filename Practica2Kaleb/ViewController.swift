//
//  ViewController.swift
//  Practica2Kaleb
//
//  Created by Kaleb on 23/08/23.
//

import UIKit

class ViewController: UIViewController {

    let listaDeElementos = ["gohan2", "goku ss3", "majin vegeta", "gogeta", "vegito", "goku ss1", "gotenks", "trunks", "bardock", "goku ui"]
    var elementosIndice = 0
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualizaElemento()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func mostrar(_ sender: Any) {
        etiqueta.text = listaDeElementos[elementosIndice]
    }
    
    @IBAction func siguiente(_ sender: Any) {
        elementosIndice += 1
        if (elementosIndice >= listaDeElementos.count)
        {
            elementosIndice = 0
        }
        actualizaElemento()
    }
    
    func actualizaElemento()
    {
        etiqueta.text = "?"
        let nombreDeElemento = listaDeElementos[elementosIndice]
        let laImagen = UIImage(named: nombreDeElemento)
        imagen.image = laImagen
    }

}


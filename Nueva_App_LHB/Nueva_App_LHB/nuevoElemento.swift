//
//  nuevoElemento.swift
//  Nueva_App_LHB
//
//  Created by UNAM FCA 22 on 25/01/23.
//

import UIKit

class nuevoElemento: UIViewController {

    @IBOutlet weak var txtVin: UITextField!
    @IBOutlet weak var txtNombreMarca: UITextField!
    @IBOutlet weak var txtNombreCoche: UITextField!

    //Se ponen "" "" para identificar que esta vacío
    var nuevoCoche:Coche=Coche(portada: UIImage(systemName: "car.fill")!, nombre: "", coche: "")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func Guardar(_ sender: Any) {
        nuevoCoche.coche=txtNombreCoche.text!
        nuevoCoche.nombre=txtNombreMarca.text!
        

        arregloCoches.append(nuevoCoche)
    }

}

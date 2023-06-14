
import UIKit

struct Coche{
    var portada:UIImage
    var nombre:String
    var coche:String
}

var arregloCoches:[Coche]=[
    //los dos puntos : son para asignacion de tipo de
    //El signo de ! dice que el nombre de la imagen debe llamarse así
    Coche(portada: UIImage(named: "foto")!, nombre: "Hacer imagen", coche: "Rav4"),
    Coche (portada: UIImage(named: "coche")!, nombre: "Elegir coche", coche: "Mustang"),
    Coche (portada: UIImage(named: "herramienta")!, nombre: "Reparar", coche: "Audi"),
    Coche (portada: UIImage (named : "vin")!, nombre: "Registrar", coche: "MB")
]

class Tabla_Coches: UIViewController, UITableViewDelegate, UITableViewDataSource {




    @IBOutlet weak var tbCoches: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tbCoches.dataSource=self
        tbCoches.delegate=self


    }
//La flechita -> significa lo que espera de regreso
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arregloCoches.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Un igual = es asignacion y doble == que tiene que ser igual
let celda = tbCoches.dequeueReusableCell(withIdentifier: "Celda_1", for: indexPath) as! Celda_Coches
        
        let celdaReusada = arregloCoches[indexPath.row]
//aqui sustituimos la imagen de la tabla
        celda.imgFoto.image=celdaReusada.portada
        celda.lblNombre.text=celdaReusada.nombre
        celda.lblCoche.text=celdaReusada.coche

        return celda

    }
//Para definir el alto de tabla
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    override func viewDidAppear(_ animated: Bool) {
        tbCoches.reloadData()
    }

}

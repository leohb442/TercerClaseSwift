//
//  Celda_Coches.swift
//  Nueva_App_LHB
//
//  Created by UNAM FCA 22 on 19/01/23.
//

import UIKit

class Celda_Coches: UITableViewCell {

    

    @IBOutlet weak var lblCoche: UILabel!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

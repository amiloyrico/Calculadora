//
//  Operaciones2Cell.swift
//  Ejercicio1
//
//  Created by Alba Yolima Rico Montenegro on 3/11/22.
//

import UIKit

class Operaciones2Cell: UITableViewCell {
    
    
    @IBOutlet weak var icono: UIImageView!
    
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBOutlet weak var Valor1Label: UILabel!
    
    @IBOutlet weak var Valor2Label: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    var operacion:Operaciones2! {
        didSet{
            ResultadoLabel.text = "\(operacion.resultado)"
            Valor1Label.text = "\(operacion.valor1)"
            Valor2Label.text = "\(operacion.valor2)"
            
            var image = ""
            
            switch operacion.tipoDeOperacion {
            case .division:
                image = "divide"
            case .multiplicacion:
                image = "multiply"
            case .suma:
                image = "plus"
            case .resta:
                image = "minus"
            }
            
            self.icono.image = UIImage(systemName: image)
            self.icono.backgroundColor = .blue
            self.icono.layer.cornerRadius = 35
            self.icono.tintColor = .white
        }
    }
}

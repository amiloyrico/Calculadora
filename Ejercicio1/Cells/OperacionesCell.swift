//
//  OperacionesCell.swift
//  Ejercicio1
//
//  Created by Alba Yolima Rico Montenegro on 1/11/22.
//

import UIKit

class OperacionesCell: UITableViewCell {
    

    @IBOutlet weak var icono: UIImageView!
    @IBOutlet weak var resultado: UILabel!
    
    @IBOutlet weak var val1: UILabel!
    @IBOutlet weak var val2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    var operacion:Operaciones! {
        didSet{
            resultado.text = "\(operacion.resultado)"
            val1.text = "\(operacion.valor1)"
            val2.text = "\(operacion.valor2)"
            
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

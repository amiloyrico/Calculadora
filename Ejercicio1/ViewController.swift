//
//  ViewController.swift
//  Ejercicio1
//
//  Created by Alba Yolima Rico Montenegro on 29/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: - Control variables
    
    @IBOutlet weak var num1Text: UITextField!
    @IBOutlet weak var num2Text: UITextField!
    @IBOutlet weak var sumarButton: UIButton!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var acumuladoLabel: UILabel!
    
    @IBOutlet weak var restaButton: UIButton!
    @IBOutlet weak var multiplicarButton: UIButton!
    @IBOutlet weak var dividirButton: UIButton!
    
    //    MARK: - Variables
    
    var acumulado: Int = 0
    var resultados = [String]()
    var operaciones = [Operaciones]()
    var operaciones2 = [Operaciones2]()
    
    //    MARK: - Control event
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sumarButton.backgroundColor = .green
        sumarButton.layer.cornerRadius = 20
        resultadoLabel.backgroundColor = .orange
        resultadoLabel.layer.cornerRadius = 10
        resultadoLabel.layer.masksToBounds = true
        resultadoLabel.layer.borderColor = UIColor.blue.cgColor
        resultadoLabel.layer.borderWidth = 2
        
        
        
        
        
    }
    
    //    MARK: - Control Function
    
    
    @IBAction func sumarAction(_ sender: UIButton) {
        let num1 = Int(num1Text.text!) ?? 0
        let num2 = Int(num2Text.text!) ?? 0
        
        let resultado = sumarDosNumeros(num1: num1, num2: num2)
        
        resultados.append("El Resultado de la suma es: \(resultado)")
        
        let operacion = Operaciones(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .suma)
        
        operaciones.append(operacion)
        
        let operacion2 = Operaciones2(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .suma)
        
        operaciones2.append(operacion2)
        
        self.resultadoLabel.text = "El Resultado de la suma es: \(resultado)"
        
        self.view.endEditing(true)
    }
    
    
    @IBAction func restaAction(_ sender: UIButton) {
        let num1 = Int(num1Text.text!) ?? 0
        let num2 = Int(num2Text.text!) ?? 0
        
        let resultado = restarDosNumeros(num1: num1, num2: num2)
        resultados.append("El Resultado de la resta es: \(resultado)")
        
        
        let operacion = Operaciones(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .resta)
        
        operaciones.append(operacion)
        
        let operacion2 = Operaciones2(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .resta)
        operaciones2.append(operacion2)
        
        self.resultadoLabel.text = "El Resultado de la resta es: \(resultado)"

       
        
    }

    
    @IBAction func multiplicarAction(_ sender: UIButton) {
        let num1 = Int(num1Text.text!) ?? 0
        let num2 = Int(num2Text.text!) ?? 0
        
        let resultado = multiplicarDosNumeros(num1: num1, num2: num2)
        resultados.append ("El resultado de la multiplicación es: \(resultado)")
        
        let operacion = Operaciones(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .multiplicacion)
        
        operaciones.append(operacion)
        
        
        self.resultadoLabel.text = "El Resultado de la multiplicación es: \(resultado)"
        
        
        let operacion2 = Operaciones2(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .multiplicacion)
        
        operaciones2.append(operacion2)
    }
    
    
    @IBAction func dividirAction(_ sender: UIButton) {
        let num1 = Int(num1Text.text!) ?? 0
        let num2 = Int(num2Text.text!) ?? 0
        
        let resultado = dividirDosNumeros(num1: num1, num2: num2)
        resultados.append("El resultado de la division es: \(resultado)")
        
        let operacion = Operaciones (valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .division)
        
        operaciones.append(operacion)
        
        self.resultadoLabel.text = "El Resultado de la division es: \(resultado)"
        
        let operacion2 = Operaciones2(valor1: num1, valor2: num2, resultado: resultado, tipoDeOperacion: .division)
        
        operaciones2.append(operacion2)
        
    }
    
    
    
    
    // MARK: - Funciones
    func sumarDosNumeros(num1: Int, num2: Int ) -> Double {
        let result = num1 + num2
        return Double(result)
        
    }
    
    func restarDosNumeros (num1: Int, num2: Int) -> Double {
        let result = num1 - num2
        return Double(result)
    }
    
    func multiplicarDosNumeros (num1: Int, num2: Int) -> Double{
        let result = num1 * num2
        return Double(result)
    }
    
    func dividirDosNumeros (num1: Int, num2: Int) -> Double{
        let result = Double(num1) / Double(num2)
        
        
        return result
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetalleTableController {
            vc.nombres = resultados
        }
        
        if let cv = segue.destination as? DetalleTable2Controller {
            cv.operaciones = self.operaciones
        }
        
        if let cv = segue.destination as? DetalleTable3Controller {
            cv.operaciones = self.operaciones2
        }
    }
    
    
    
    
}


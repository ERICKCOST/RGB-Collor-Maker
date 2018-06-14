//
//  ViewController.swift
//  RGB color Slider
//
//  Created by Swift on 06/04/2018.
//  Copyright © 2018 Erick. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //MARK:- Propriedade
    var vermelho : CGFloat = 1
    var verde : CGFloat = 1
    var azul : CGFloat = 1
    
    //MARK:- Propriedade Label
    @IBOutlet weak var vermelhoLabel: UILabel!
    @IBOutlet weak var verdeLabel: UILabel!
    @IBOutlet weak var azulLebal: UILabel!
    @IBOutlet weak var hexadeciLabel: UILabel!
    
    @IBOutlet weak var valorAzul: UISlider!
    @IBOutlet weak var fundo: UIView!
    @IBOutlet weak var valorVerde: UISlider!
    @IBOutlet weak var valorVermelho: UISlider!
    

    
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        azulLebal.text = String(Int(valorAzul.value * 255))
        verdeLabel.text = String( Int(verde * 255))
        vermelhoLabel.text = String( Int(vermelho * 255))
 
        let valorRed = Int(vermelho * 255)
        let valorGreen = Int(verde * 255)
        let valorBlue = Int (valorAzul.value * 255)
        
        let red = hexadeciamal(valor: Int(valorRed/16))
        let restoRed = hexadeciamal(valor: Int(valorRed % 16))
        let green = hexadeciamal(valor: Int(valorGreen/16))
        let restoGreen = hexadeciamal(valor: Int(valorGreen % 16))
        let blue = hexadeciamal(valor: Int(valorBlue/16))
        let restoBlue = hexadeciamal(valor: Int(valorBlue%16))
        
        
        
        hexadeciLabel.text = "#\(red)\(restoRed)\(green)\(restoGreen)\(blue)\(restoBlue)"
        let corFinal = UIColor (red: vermelho, green: verde, blue: azul, alpha: 1.0)

        fundo.backgroundColor = corFinal
    }

    
     //MARK: Action
    @IBAction func branquear(_ sender: UIButton) {
        vermelho = 1.0
        verde = 1.0
        azul = 1.0
        valorAzul.value = 1.0
        valorVermelho.value = 1.0
        valorVerde.value = 1.0
        viewDidLoad()
    }
    @IBAction func pretear(_ sender: UIButton) {
        vermelho = 0.0
        verde = 0.0
        azul = 0.0
        valorAzul.value = 0.0
        valorVermelho.value = 0.0
        valorVerde.value = 0.0
        
        viewDidLoad()
    }
    
   
    @IBAction func mudarCorAleatoriamente(_ sender: UIButton) {
       
        let vermelho1 = Float(Int(arc4random_uniform(1001))/100)
        
        let verde1 = Float(Int(arc4random_uniform(1001))/100)
        
        let azul1 = Float(Int(arc4random_uniform(1001))/100)
        
        vermelho = CGFloat(vermelho1/10)
        azul = CGFloat(azul1/10)
        valorAzul.value = azul1/10
        valorVermelho.value = vermelho1/10
        verde = CGFloat(verde1/10)
        valorVerde.value = verde1/10
        
        viewDidLoad()
        
        
    }
    @IBAction func mudarVermelho(_ sender: UISlider) {
        vermelho = CGFloat(sender.value)
        viewDidLoad()
    }

    @IBAction func mudarVerde(_ sender: UISlider) {
        verde = CGFloat(sender.value)
        viewDidLoad()
    }

    @IBAction func mudarAzul(_ sender: UISlider) {
        azul = CGFloat(sender.value)
        viewDidLoad()
    }
    
    //Função que traduz para Hexadecimal
    func hexadeciamal (valor : Int) -> String {
        if valor == 10{
            return ("A")
        }else if valor == 0{
            return ("0")
        }else if valor == 1{
            return ("1")
        }else if valor == 2{
            return ("2")
        }else if valor == 3{
            return ("3")
            
        }else if valor == 4{
            return ("4")
        }else if valor == 5{
            return ("5")
        }else if valor == 6{
            return ("6")
        }else if valor == 7{
            return ("7")
        }else if valor == 8{
            return ("8")
            
        }else if valor == 9{
            return ("9")
        }else if valor == 11{
            return ("B")
        }else if valor == 12{
            return ("C")
        }else if valor == 13{
            return ("D")
        }else if valor == 14{
            return ("E")
            
        }else if valor == 15{
            return ("F")
            
        }else{
            return ("\(valor)")
                
        }
        
    }
   
}
    




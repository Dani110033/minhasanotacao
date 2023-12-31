//
//  ViewController.swift
//  Minhas Anotacões
//
//  Created by Enzo on 20/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoCampo: UITextView!
    
    let chave = "minhaAnotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
       if  let texto = textoCampo.text {
           UserDefaults.standard.set(texto, forKey: chave )
           
    }
        
    }
    func recuperarAnotacao() -> String {
        
        if  let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            return textoRecuperado as! String
    }
    
     return ""
    
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
    textoCampo.text = recuperarAnotacao()
    
    }
        
}



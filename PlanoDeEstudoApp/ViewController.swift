//
//  ViewController.swift
//  PlanoDeEstudoApp
//
//  Created by Debora.souza on 23/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var areaDeAtuacaoTextFiedl: UITextField!
    
    @IBOutlet weak var statusTextFiedl: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ReceberMaterialButton(_ sender: UIButton) {
        verificarDados()
        
    }
    
    func verificarDados() {
        let alert = UIAlertController(title: "Quase lá", message: "Antes de enviarmos, por favor, revise seus dados:\nNome: \(nameTextField.text ?? "")\nEmail: \(emailTextField.text ?? "")\nÁrea de Atuação: \(areaDeAtuacaoTextFiedl.text ?? "")\nStatus Profissional: \(statusTextFiedl.text ?? "")", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .cancel, handler: acaoConfirmarSelecioanda))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func acaoConfirmarSelecioanda( _action: UIAlertAction) {
        confirmarRecebimento()
    }
        
    func confirmarRecebimento() {
        let alert1 = UIAlertController(title: "Feito", message: "Verifique seu email e tenha acesso ao documento", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert1, animated: true, completion: nil)
    }    
}



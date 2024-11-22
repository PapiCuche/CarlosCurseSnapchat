//
//  ViewController.swift
//  CarlosCurseSnapchat
//
//  Created by Mauricio Curse on 18/11/24.
//

import UIKit
import FirebaseAuth

class iniciarSessionViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func iniciarSessionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil {
                print("Se presentó el siguiente error: \(String(describing: error))")
            } else {
                print("Inicio de sesión exitoso")
            }
        }
    }

    


}


//
//  ViewController.swift
//  Snapchat
//
//  Created by MAC03 on 9/05/19.
//  Copyright © 2019 Angel Flores. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){(user, error) in
            print("Intentando iniciar sesion")
            if error != nil{
                print("Sepresento el siguiente error:\(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
}


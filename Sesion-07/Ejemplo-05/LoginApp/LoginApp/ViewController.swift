//
//  ViewController.swift
//  LoginApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var userTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var errorLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func login(_ sender: Any) {
    let user = userTextField.text
    let pass = passwordTextField.text
    errorLabel.isHidden = false
    if user == "MiUsuario" && pass == "MiPassword" {
      errorLabel.text = "Login exitoso"
      errorLabel.textColor = UIColor.green
    } else {
      errorLabel.text = "Usuario o Password no validos"
      errorLabel.textColor = UIColor.red
    }
  }
}


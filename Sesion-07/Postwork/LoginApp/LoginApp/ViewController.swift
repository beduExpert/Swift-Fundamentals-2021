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
  
  var users = ["User1", "User2", "User3", "User4", "User5"]
  var passwords = ["Pass1", "Pass2", "Pass3", "Pass4", "Pass5"]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func login(_ sender: Any) {
    let userText = userTextField.text
    let passText = passwordTextField.text
    errorLabel.isHidden = false
    
    var userFound: Bool = false
    var passFound: Bool = false

    for user in users {
      if user == userText {
        userFound = true
      }
    }
    for pass in passwords {
      if pass == passText {
        passFound = true
      }
    }

    if userFound && passFound {
      errorLabel.text = "Usuario encontrado"
      errorLabel.textColor = UIColor.green
    } else {
      errorLabel.text = "Usuario no encontrado"
      errorLabel.textColor = UIColor.red
    }
  }
}


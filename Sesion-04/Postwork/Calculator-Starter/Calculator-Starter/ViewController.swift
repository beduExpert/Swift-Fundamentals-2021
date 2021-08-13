//
//  ViewController.swift
//  Calculator-Starter
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var number1: UITextField!
  @IBOutlet weak var number2: UITextField!
  @IBOutlet weak var result: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  private func getInput1() -> Int {
    return Int(number1?.text ?? "") ?? 0
  }

  private func getInput2() -> Int {
     return Int(number2?.text ?? "") ?? 0
   }
  
  @IBAction func addition(_ sender: Any) {
    let num1: Int = getInput1()
    let num2: Int = getInput2()
    //agrega tu operación aquí.
    //y muestra el resultado
  }
  
  @IBAction func subtraction(_ sender: Any) {
    let num1: Int = getInput1()
    let num2: Int = getInput2()
    //agrega tu operación aquí.
    //y muestra el resultado
  }
  
  @IBAction func multiplication(_ sender: Any) {
    let num1: Int = getInput1()
    let num2: Int = getInput2()
    //agrega tu operación aquí.
    //y muestra el resultado
  }
  
  @IBAction func division(_ sender: Any) {
    let num1: Int = getInput1()
    let num2: Int = getInput2()
    //agrega tu operación aquí.
    //y muestra el resultado
  }
}


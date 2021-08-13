//
//  ViewController.swift
//  Project06
//
//  Created by Richie on 30/10/19.
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  
  var count = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func incremento(_ sender: Any) {
    count = count + 1
    label.text = "\(count)"
    label.font = UIFont(name: "Helvetica", size: 12.0 + CGFloat(count))
  }
  
  @IBAction func decremento(_ sender: Any) {
    count = count - 1
    label.text = "\(count)"
    label.font = UIFont(name: "Helvetica", size: 12.0 + CGFloat(count))
  }
}


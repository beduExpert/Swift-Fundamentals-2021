//
//  ViewController.swift
//  ArrayAppColors
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var subview: UIView!
  @IBOutlet weak var slider: UISlider!
  
  let green = UIColor.green
  let blue = UIColor.blue
  let black = UIColor.black
  let red = UIColor(red: 0.92, green: 0.24, blue: 0.25, alpha: 1.00)
  var colors: [UIColor] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    // Colors array
    colors.append(red)
    colors.append(green)
    colors.append(blue)
    colors.append(black)
    slider.maximumValue = Float(colors.count) - 1
    slider.minimumValue = 0.0
    slider.value = 1
  }
  
  @IBAction func changeColor(_ sender: Any) {
    let index = Int(slider.value)
    let color = colors[index]
    subview.backgroundColor = color
  }
  
}


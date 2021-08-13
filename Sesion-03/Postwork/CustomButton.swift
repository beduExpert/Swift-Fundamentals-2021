//
//  CustomButton.swift
//  CustomViews
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

@IBDesignable class CustomButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    sharedInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    sharedInit()
  }
  
  override func prepareForInterfaceBuilder() {
    sharedInit()
  }
  
  func sharedInit() {
    // Common logic goes here
    refreshCorners(value: cornerRadius)
  }
  
  func refreshCorners(value: CGFloat) {
    layer.cornerRadius = value
  }
  
  @IBInspectable var cornerRadius: CGFloat = 15 {
    didSet {
      refreshCorners(value: cornerRadius)
    }
  }
}

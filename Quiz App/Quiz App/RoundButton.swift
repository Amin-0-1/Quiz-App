//
//  RoundButton.swift
//  Quiz App
//
//  Created by amin on 1/26/19.
//  Copyright © 2019 amin. All rights reserved.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {
    // borderWidth, borderColor, cornerRadius
    
    @IBInspectable var radius:CGFloat = 0{
        didSet{
            self.layer.cornerRadius = radius
        }
    }
    @IBInspectable var width:CGFloat = 0{
        didSet{
            self.layer.borderWidth = width
        }
    }
    @IBInspectable var color : UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = color.cgColor
        }
    }
    
}

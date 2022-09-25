//
//  UIColor+Extension.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

extension UIColor {
    
    //MARK: -Variables
    static let safeHue = Array(0...150) + Array(230...359)
    
    //MARK: Functions
    static func random() -> UIColor {
        let randomHue = safeHue.randomElement()!
        
        return UIColor(hue: CGFloat(randomHue) / 100, saturation: 0.7, brightness: 1, alpha: 1)
    }
}

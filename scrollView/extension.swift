//
//  extension.swift
//  scrollView
//
//  Created by Даша Волошина on 8.09.22.
//

import UIKit
extension UIStackView {
    
    func createStackView(){
        
        distribution = .fillEqually
        spacing = 30
        axis = .vertical
        alignment = .fill
        
    }
}
extension UITextField {
    
    func createTextField () {
        
        borderStyle = .roundedRect
        textColor = .black
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 2
        placeholder = "Text Field"
        
        }
}



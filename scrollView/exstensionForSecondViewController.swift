//
//  exstensionForSecondViewController.swift
//  scrollView
//
//  Created by Даша Волошина on 14.09.22.
//

import UIKit

extension  UIStackView {

    func makeStackLabel () {
     
        axis = .vertical
//        alignment = .fill
        distribution = .fillEqually
        spacing =  16
    }
    
    func makeStackTextField () {
        
        axis = .vertical
        distribution = .fillEqually
        spacing =  16
//        alignment = .fill
        
    }
    
    func makeStackTop () {
        
        axis = .horizontal
        distribution = .fillEqually
        spacing =  20
//        alignment = .fill
    
    }
}
//
extension ButtonView {

    func makeStackBottom () {

        axis = .horizontal
        distribution = .fillEqually
//        alignment = .fill
        spacing = 10

    }
    
}

extension UILabel {
    
    func makelabel () {
        
        textAlignment = .left
        textColor = .black

    }
    
}
extension UITextField {
    func  makeTextField () {
        
        borderStyle = .roundedRect
        textColor = .black
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 2
//        font = UIFont.systemFont(ofSize: 10)
 
    }
    
}
extension UITextView {
    
    func makeNote () {
        
        text  = " Notes "
        backgroundColor = .gray
        contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 0, right: 10)
        font = UIFont.systemFont(ofSize: 18)
//        widthAnchor.constraint(equalToConstant: 200).isActive =  true
//        heightAnchor.constraint(equalToConstant: 200).isActive = true
        translatesAutoresizingMaskIntoConstraints = false
        isScrollEnabled = false
    }
}


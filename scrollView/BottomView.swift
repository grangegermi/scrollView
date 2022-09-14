//
//  BottomView.swift
//  scrollView
//
//  Created by Даша Волошина on 14.09.22.
//

import UIKit

class  ButtonView: UIStackView {
    
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    
    override init(frame:CGRect){
        super.init(frame:frame)
        
        addArrangedSubview(button1)
        addArrangedSubview(button2)
        addArrangedSubview(button3)
        
        button1.backgroundColor = .orange
        button2.backgroundColor = .purple
        button3.backgroundColor = .yellow
        button1.setTitle("Save", for: .normal)
        button2.setTitle("Cancel", for: .normal)
        button3.setTitle("Clear", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button3.setTitleColor(.black, for: .normal)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


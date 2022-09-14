//
//  Topview.swift
//  scrollView
//
//  Created by Даша Волошина on 14.09.22.
//


import UIKit
 
class TopView: UIStackView {
    
    let imageView = UIImageView()
    let firstTextField = UITextField()
    let secondTextField = UITextField()
    let thirdTextField = UITextField()
    let firstLabel = UILabel()
    let secondLabel = UILabel()
    let thirdLabel = UILabel()
    let stackTextFild = UIStackView()
    let stacklLabel = UIStackView()
    
    
    override init(frame:CGRect){
        super.init(frame:frame)
        
        imageView.image = UIImage(named: "cats")
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.contentMode = .scaleAspectFit
        
        addLabels()
        addTextFields()
        
        addArrangedSubview(imageView)
        addArrangedSubview(stacklLabel)
        addArrangedSubview(stackTextFild)
        
        stackTextFild.makeStackTextField()
        stacklLabel.makeStackLabel()
        
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addLabels (){
        firstLabel.makelabel()
        secondLabel.makelabel()
        thirdLabel.makelabel()
        
        firstLabel.text = "First"
        secondLabel.text = "Second"
        thirdLabel.text = "Third"
        
        stacklLabel.addArrangedSubview(firstLabel)
        stacklLabel.addArrangedSubview(secondLabel)
        stacklLabel.addArrangedSubview(thirdLabel)
    }
    
    func addTextFields () {
        
        firstTextField.makeTextField()
        secondTextField.makeTextField()
        thirdTextField.makeTextField()
        
        stackTextFild.addArrangedSubview(firstTextField)
        stackTextFild.addArrangedSubview(secondTextField)
        stackTextFild.addArrangedSubview(thirdTextField)
    }
    
}

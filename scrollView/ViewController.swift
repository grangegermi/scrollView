//
//  ViewController.swift
//  scrollView
//
//  Created by Даша Волошина on 8.09.22.


// 1) Сделать UIScrollView, его контентом будем UIStackView(вертикальный,с отступом 16). Его views будут UITextFields, штук 15. При пролистовании в самый низ, начать редактировать первый textField, показать клавиатуру, показать первый textField.
//2) Переделать предыдущее ДЗ в ScrollView. Для UITextView сделать минимальный размер по высоте 300 и более (проверить введением длинного текста, можно отключить скрол). Верхнее view с textField - расстояние между textField сделать равным 16 и oбщий размер по высоте не задавать. Для нижнего вью с кнопками сделать высоту равную 0.1 от высоты экрана.
//По итогу хочу получить что бы за верхнее вью, я мог дернуть в стороны(bounce) наш контент.

import UIKit
import SnapKit

class ViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate  {
    
    let scroll = UIScrollView()
    let stack = UIStackView()

    let textField1 = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    let textField4 = UITextField()
    let textField5 = UITextField()
    let textField6 = UITextField()
    let textField7 = UITextField()
    let textField8 = UITextField()
    let textField9 = UITextField()
    let textField10 = UITextField()
    let textField11 = UITextField()
    let textField12 = UITextField()
    let textField13 = UITextField()
    let textField14 = UITextField()
    let textField15 = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let contentSize = CGSize(width: view.frame.width, height:view.frame.height + 400)
        view.addSubview(scroll)
        scroll.backgroundColor = .systemMint
        scroll.contentSize = contentSize
        scroll.frame = view.bounds

        scroll.addSubview(stack)
        scroll.delegate = self
        stack.frame.size = contentSize
        
        stack.addArrangedSubview(textField1)
        textField1.delegate = self

        stack.addArrangedSubview(textField2)
        stack.addArrangedSubview(textField3)
        stack.addArrangedSubview(textField4)
        stack.addArrangedSubview(textField5)
        stack.addArrangedSubview(textField6)
        stack.addArrangedSubview(textField7)
        stack.addArrangedSubview(textField8)
        stack.addArrangedSubview(textField9)
        stack.addArrangedSubview(textField10)
        stack.addArrangedSubview(textField11)
        stack.addArrangedSubview(textField12)
        stack.addArrangedSubview(textField13)
        stack.addArrangedSubview(textField14)
        stack.addArrangedSubview(textField15)
         
    
        textField1.placeholder = "textfield"
    
        stack.createStackView()
        addSettingsTextFields()
        createConstraintsStack ()
        
      
        
    }
        
    func addSettingsTextFields() {
        
        textField1.createTextField()
        textField2.createTextField()
        textField3.createTextField()
        textField4.createTextField()
        textField5.createTextField()
        textField6.createTextField()
        textField7.createTextField()
        textField8.createTextField()
        textField9.createTextField()
        textField10.createTextField()
        textField11.createTextField()
        textField12.createTextField()
        textField13.createTextField()
        textField14.createTextField()
        textField15.createTextField()
        
    }
    

    func createConstraints () {

       scroll.snp.makeConstraints { make in
           make.left.equalTo(view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
    }

    func createConstraintsStack () {
        stack.snp.makeConstraints { make in
            make.left.equalTo(scroll.frameLayoutGuide.snp.left).inset(16)
            make.right.equalTo(scroll.frameLayoutGuide.snp.right).inset(16)
        }
}
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//       self.textField1.becomeFirstResponder()
            if scroll.contentSize.height > view.bounds.height {
                scroll.contentSize.height = view.frame.origin.y
            self.textField1.becomeFirstResponder()
        }
        }
//            self.textField1.becomeFirstResponder()
        }
//      NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidShowNotification, object: nil, queue: .main) { notification in
//
//      }
   
    
    
//}

//
//  SecondViewController.swift
//  scrollView
//
//  Created by Даша Волошина on 14.09.22.

//2) Переделать предыдущее ДЗ в ScrollView. Для UITextView сделать минимальный размер по высоте 300 и более (проверить введением длинного текста, можно отключить скрол). Верхнее view с textField - расстояние между textField сделать равным 16 и oбщий размер по высоте не задавать. Для нижнего вью с кнопками сделать высоту равную 0.1 от высоты экрана.
//По итогу хочу получить что бы за верхнее вью, я мог дернуть в стороны(bounce) наш контент.

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    let textView = UITextView()
    let topView = TopView()
    let bottomView = ButtonView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentSize = CGSize(width: view.frame.width + 100, height:view.frame.height)
        textView.makeNote()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.backgroundColor = .systemMint
        contentView.addSubview(topView)
        contentView.addSubview(textView)
        contentView.addSubview(bottomView)
        
        scrollView.contentSize = contentSize
        contentView.frame.size = contentSize
        
        bottomView.makeStackBottom()
        topView.makeStackTop()
        textView.makeNote()
        
        makeConstraintsScroll ()
        makeConstraintsContentView()
        makeConstraintsTopView ()
        makeConstraintsTextView()
        makeConstraintsBottomView()
    }
    
    func makeConstraintsScroll () {
        
        scrollView.snp.makeConstraints { make in
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }

    func makeConstraintsContentView() {
                contentView.snp.makeConstraints { make in
            make.right.equalTo(scrollView.contentLayoutGuide.snp.right)

                    make.left.equalTo(scrollView.contentLayoutGuide.snp.left)
            make.top.equalTo(scrollView.contentLayoutGuide.snp.top)
            make.bottom.equalTo(scrollView.contentLayoutGuide.snp.bottom)
            
        }
    }
    
    func makeConstraintsTopView () {
        
    topView.snp.makeConstraints { make in
        make.top.equalTo(contentView.snp.top)
        make.left.equalTo(contentView.snp.left)
        make.right.equalTo(contentView.snp.right)
        make.bottom.equalTo(textView.snp.top).inset(-10)

    }
        
}
    func  makeConstraintsTextView() {
        
        textView.snp.makeConstraints { make in
            make.left.equalTo(scrollView.frameLayoutGuide.snp.left).inset(5)
            make.right.equalTo(scrollView.frameLayoutGuide.snp.right).inset(5)
            make.height.equalTo(scrollView.frameLayoutGuide.snp.height).multipliedBy(0.7)
    
        }
    }
    
    func makeConstraintsBottomView() {
        
        bottomView.snp.makeConstraints { make in
            make.top.equalTo(textView.snp.bottom).inset(-10)
            make.left.equalTo(scrollView.frameLayoutGuide.snp.left).inset(5)
            make.right.equalTo(scrollView.frameLayoutGuide.snp.right).inset(5)
            make.bottom.equalTo(scrollView.frameLayoutGuide.snp.bottom).inset(10)
            make.height.equalTo(contentView.snp.height).multipliedBy(0.1)
        }
    }
}

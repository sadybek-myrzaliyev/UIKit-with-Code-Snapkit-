//
//  ViewController.swift
//  UIKit-with-code(ClassWork)
//
//  Created by Садыбек Мырзалиев on 24.11.2026.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var TextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    lazy var TextField2: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    lazy var Label: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        
        return label
    }()
    
    lazy var PlusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        
        return button
    }()
    
    lazy var MinusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        
        return button
    }()
    
    lazy var MultiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("*", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        
        return button
    }()
    
    lazy var DivisionButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.backgroundColor = .blue
        
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setupUI()
        
    }
    
    
    func setupUI() {
        view.addSubview(TextField)
        view.addSubview(TextField2)
        view.addSubview(Label)
        view.addSubview(PlusButton)
        view.addSubview(MinusButton)
        view.addSubview(MultiplyButton)
        view.addSubview(DivisionButton)
        
        
        Label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        TextField.snp.makeConstraints { make in
            make.top.equalTo(Label.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        TextField2.snp.makeConstraints { make in
            make.top.equalTo(TextField.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        PlusButton.snp.makeConstraints { make in
            make.top.equalTo(TextField2.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        MinusButton.snp.makeConstraints { make in
            make.top.equalTo(PlusButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        MultiplyButton.snp.makeConstraints { make in
            make.top.equalTo(MinusButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        
        DivisionButton.snp.makeConstraints { make in
            make.top.equalTo(MultiplyButton.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
            
            PlusButton.addTarget(self, action: #selector(plus), for: .touchUpInside)
            MinusButton.addTarget(self, action: #selector(minus), for: .touchUpInside)
            MultiplyButton.addTarget(self, action: #selector(multiply), for: .touchUpInside)
            DivisionButton.addTarget(self, action: #selector(division), for: .touchUpInside)
            
        }
        
    }  // func setupUI
    
    @objc func plus() {
        
        if let firstText = TextField.text, let firstNumber = Int(firstText),
           let secondText = TextField2.text, let secondNumber = Int(secondText) {
            let sum = firstNumber + secondNumber
            
            Label.text = String(sum)
            
        } else {
            Label.text = "Введите 2 числа"
            
        }
    } // func plus
    
    @objc func minus() {
        if let firstText = TextField.text, let firstNumber = Int(firstText),
           let secondText = TextField2.text, let secondNumber = Int(secondText) {
            let minus = firstNumber - secondNumber
            
            Label.text = String(minus)
            
        } else {
            Label.text = "Введите 2 числа"
            
        }
    }
    
    @objc func multiply() {
        if let firstText = TextField.text, let firstNumber = Int(firstText),
           let secondText = TextField2.text, let secondNumber = Int(secondText) {
            let multiply = firstNumber * secondNumber
            
            Label.text = String(multiply)
            
        } else {
            Label.text = "Введите 2 числа"
            
        }
    }
    
    @objc func division() {
        if let firstText = TextField.text, let firstNumber = Int(firstText),
           let secondText = TextField2.text, let secondNumber = Int(secondText) {
            let division = firstNumber / secondNumber
            
            Label.text = String(division)
            
        } else {
            Label.text = "Введите 2 числа"
            
        }
    }
    
}








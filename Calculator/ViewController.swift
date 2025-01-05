//
//  ViewController.swift
//  Calculator
//
//  Created by Anup Saud on 2025-01-04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet var roundButtons: [UIButton]!
    @IBOutlet weak var divideButton: OperatorButton!
    @IBOutlet weak var multiplyButton: OperatorButton!
    @IBOutlet weak var minusButton: OperatorButton!
    @IBOutlet weak var plusButton: OperatorButton!
    
    lazy var operationButtons: [OperatorButton] = [divideButton, multiplyButton, minusButton, plusButton]
    
    enum Operation{
        case divide
        case multiply
        case minus
        case plus
        case none
    }
    var operation: Operation = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    func setupButton(){
        for button in operationButtons {
            button.layer.cornerRadius = button.frame.height / 2
        }

        for button in roundButtons{
            button.layer.cornerRadius = button.frame.height / 2
        }
        
    }
    
    @IBAction func didTapOperationButton(_ sender: OperatorButton) {
        let title = sender.currentTitle
        
        switch title{
        case "÷":
            operation = .divide
        case "X":
            operation = .multiply
        case "-":
            operation = .minus
        case "+":
            operation = .plus
        default:
            break
        }
        highLightButton(button: sender)

    }
    func deselectButton(){
        for button in operationButtons{
            button.backgroundColor = .systemOrange
            button.setTitleColor(.white, for: .normal)
            button.isSelection = false
        }
    }
    func highLightButton(button: OperatorButton){
        deselectButton()
        button.backgroundColor = .white
        button.setTitleColor(.systemOrange, for: .normal)
        button.isSelection = true

    }
    
    @IBAction func didTapNumberButtons(_ sender: UIButton) {
       let number = sender.tag
        if displayLabel.text == "0"{
            displayLabel.text = "\(number)"
        }else{
            displayLabel.text! += "\(number)"
        }


    }
    
    
    
    @IBAction func didTapDecimalButton() {
    }
    
    @IBAction func didTapEqualsButton() {
    }
    
    @IBAction func didTapPercentageButton() {
    }
    
    @IBAction func didTapPlusMinusButton() {
    }
    
    @IBAction func didTapClearButton() {
    }
}


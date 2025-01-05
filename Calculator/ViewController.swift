//
//  ViewController.swift
//  Calculator
//
//  Created by Anup Saud on 2025-01-04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var roundButtons: [UIButton]!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    lazy var operationButtons: [UIButton] = [divideButton, multiplyButton, minusButton, plusButton]
    
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
    
    @IBAction func didTapOperationButton(_ sender: UIButton) {
    }
    
    @IBAction func didTapNumberButtons(_ sender: UIButton) {
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


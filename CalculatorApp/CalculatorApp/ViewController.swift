//
//  ViewController.swift
//  CalculatorApp
//
//  Created by ABC on 2022-09-24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var modulusButton: UIButton!
    @IBOutlet weak var devideButton: UIButton!
    
    @IBOutlet weak var numberSevenButton: UIButton!
    @IBOutlet weak var numberEightButton: UIButton!
    @IBOutlet weak var numberNineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    
    @IBOutlet weak var numberFourButton: UIButton!
    @IBOutlet weak var numberFiveButton: UIButton!
    @IBOutlet weak var numberSixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var numberOneButton: UIButton!
    @IBOutlet weak var numberTwoButton: UIButton!
    @IBOutlet weak var numberThreeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var pointButton: UIButton!
    @IBOutlet weak var numberZeroButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusOrMinusButton: UIButton!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var displayView: UIView!
    
    var isFirstNumber: Bool = true
    var isDecimal: Bool = false
    var numberString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpUI()
    }
    
    func setUpUI() {
        self.clearButton.layer.cornerRadius = self.clearButton.frame.height/2
        self.backButton.layer.cornerRadius = self.backButton.frame.height/2
        self.modulusButton.layer.cornerRadius = self.modulusButton.frame.height/2
        self.devideButton.layer.cornerRadius = self.devideButton.frame.height/2
        self.numberSevenButton.layer.cornerRadius = self.numberSevenButton.frame.height/2
        self.numberEightButton.layer.cornerRadius = self.numberEightButton.frame.height/2
        self.numberNineButton.layer.cornerRadius = self.numberNineButton.frame.height/2
        self.multiplyButton.layer.cornerRadius = self.multiplyButton.frame.height/2
        self.numberFourButton.layer.cornerRadius = self.numberFourButton.frame.height/2
        self.numberFiveButton.layer.cornerRadius = self.numberFiveButton.frame.height/2
        self.numberSixButton.layer.cornerRadius = self.numberSixButton.frame.height/2
        self.minusButton.layer.cornerRadius = self.minusButton.frame.height/2
        self.numberOneButton.layer.cornerRadius = self.numberOneButton.frame.height/2
        self.numberTwoButton.layer.cornerRadius = self.numberTwoButton.frame.height/2
        self.numberThreeButton.layer.cornerRadius = self.numberThreeButton.frame.height/2
        self.plusButton.layer.cornerRadius = self.plusButton.frame.height/2
        self.pointButton.layer.cornerRadius = self.pointButton.frame.height/2
        self.numberZeroButton.layer.cornerRadius = self.numberZeroButton.frame.height/2
        self.equalButton.layer.cornerRadius = self.equalButton.frame.height/2
        self.plusOrMinusButton.layer.cornerRadius = self.plusOrMinusButton.frame.height/2
        
        self.displayView.layer.cornerRadius = self.plusOrMinusButton.frame.height/2
    }
    
    
    @IBAction func numberButtonsClicked(_ sender: UIButton) {
        if isDecimal {
            numberString = numberString + "."
            isDecimal = false
        }
        if isFirstNumber {
            switch sender.tag {
            case 0:
                numberString = numberString + String(0)
                break
            case 1:
                numberString = numberString + String(1)
                break
            case 2:
                numberString = numberString + String(2)
                break
            case 3:
                numberString = numberString + String(3)
                break
            case 4:
                numberString = numberString + String(4)
                break
            case 5:
                numberString = numberString + String(5)
                break
            case 6:
                numberString = numberString + String(6)
                break
            case 7:
                numberString = numberString + String(7)
                break
            case 8:
                numberString = numberString + String(8)
                break
            case 9:
                numberString = numberString + String(9)
                break
            case 10:
                if !numberString.contains(".") {
                    isDecimal = true
                }
                
                break
            default:
                break
            }
            displayLabel.text = numberString
        }
    }
    @IBAction func clearButtonClicked(_ sender: Any) {
        isFirstNumber = true
        numberString = ""
        displayLabel.text = "0"
    }
    
    @IBAction func backSpaceClicked(_ sender: UIButton) {
        let _ = numberString.popLast()
        displayLabel.text = numberString
    }
}


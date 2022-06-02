//
//  SettingsViewController.swift
//  RandomNumber
//
//  Created by Felix Titov on 03.02.2022.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var randomNumber: RandomNumber!
    
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minValueTF.delegate = self
        maxValueTF.delegate = self
        
        minValueTF.text = String(randomNumber.minValue)
        maxValueTF.text = String(randomNumber.maxValue)

    }
    
    @IBAction func saveButtonPressed() {
        view.endEditing(true)
        delegate.setValues(for: randomNumber)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let numberValue = Int(newValue) else { return }
        
        if textField == minValueTF {
            randomNumber.maxValue = numberValue
        } else {
            randomNumber.maxValue = numberValue
        }
    }
}

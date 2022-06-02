//
//  ViewController.swift
//  RandomNumber
//
//  Created by Felix Titov on 02.02.2022.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

protocol SettingsViewControllerDelegate {
    func setValues(for randomNumber: RandomNumber)
}

class MainViewController: UIViewController {

    @IBOutlet var minNumberLabel: UILabel!
    @IBOutlet var maxNumberLabel: UILabel!
    
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    private var randomNumber = RandomNumber(minValue: 0, maxValue: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
        
        minNumberLabel.text = String(randomNumber.minValue)
        maxNumberLabel.text = String(randomNumber.maxValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.randomNumber = randomNumber
        settingsVC.delegate = self
    }

    @IBAction func getRandomValueButtonPressed() {
        randomValueLabel.text = String(randomNumber.getRandomNumber())
    }
    
}

extension MainViewController: SettingsViewControllerDelegate {
    func setValues(for randomNumber: RandomNumber) {
        minNumberLabel.text = String(randomNumber.minValue)
        maxNumberLabel.text = String(randomNumber.maxValue)
        
        self.randomNumber = randomNumber
    }
    
}


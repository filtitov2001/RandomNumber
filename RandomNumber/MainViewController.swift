//
//  ViewController.swift
//  RandomNumber
//
//  Created by Felix Titov on 02.02.2022.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minNumberLabel: UILabel!
    @IBOutlet var maxNumberLabel: UILabel!
    
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.minimumValue = minNumberLabel.text
        settingsVC.maximumValue = maxNumberLabel.text
    }

    @IBAction func getRandomValueButtonPressed() {
        let minimumValue = Int(minNumberLabel.text ?? "") ?? 0
        let maximumValue = Int(maxNumberLabel.text ?? "") ?? 0
        
        randomValueLabel.text = String(Int.random(in: minimumValue...maximumValue))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else {return}
        minNumberLabel.text = settingsVC.minValueTF.text
        maxNumberLabel.text = settingsVC.maxValueTF.text

    }
}


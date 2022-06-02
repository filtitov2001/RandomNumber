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
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minValueTF.text = minimumValue
        maxValueTF.text = maximumValue

    }

    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}

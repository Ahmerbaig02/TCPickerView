//
//  ViewController.swift
//  TCPickerView
//
//  Created by Taras Chernyshenko on 9/4/17.
//  Copyright © 2017 Taras Chernyshenko. All rights reserved.
//

import UIKit
import TCPickerView

class ViewController: UIViewController {

    @IBAction private func showButtonPressed(button: UIButton) {
        let picker = TCPickerView()
        picker.title = "Cars"
        let cars = [
            "Chevrolet Bolt EV",
            "Subaru WRX",
            "Porsche Panamera",
            "BMW 330e",
            "Chevrolet Volt",
            "Ford C-Max Hybrid",
            "Ford Focus"
        ]
        let values = cars.map { TCPickerView.Value(title: $0) }
        picker.values = values
        picker.completion = { (selectedIndexes) in
            for i in selectedIndexes {
                print(values[i].title)
            }
        }
        picker.show()
    }
}


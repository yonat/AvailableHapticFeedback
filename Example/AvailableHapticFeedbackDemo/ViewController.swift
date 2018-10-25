//
//  ViewController.swift
//  AvailableHapticFeedbackDemo
//
//  Created by Yonat Sharon on 25.10.2018.
//  Copyright © 2018 Yonat Sharon. All rights reserved.
//

import AvailableHapticFeedback
import UIKit

class ViewController: UIViewController {
    @IBOutlet var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        for hapticStyle in AvailableHapticFeedback.Style.allCases {
            stackView.addArrangedSubview(HapticButton(hapticStyle: hapticStyle))
        }
    }
}

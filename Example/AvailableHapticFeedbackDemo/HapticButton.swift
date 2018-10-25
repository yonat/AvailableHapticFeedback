//
//  HapticButton.swift
//  AvailableHapticFeedbackDemo
//
//  Created by Yonat Sharon on 25.10.2018.
//  Copyright © 2018 Yonat Sharon. All rights reserved.
//

import AvailableHapticFeedback
import UIKit

class HapticButton: UIButton {
    let haptic: AvailableHapticFeedback

    init(hapticStyle: AvailableHapticFeedback.Style) {
        haptic = AvailableHapticFeedback(style: hapticStyle)
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        haptic = AvailableHapticFeedback()
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = tintColor
        layer.cornerRadius = 16
        setTitle("     \(haptic.style)     ", for: .normal)
        addTarget(self, action: #selector(generateFeedback), for: .touchDown)
        haptic.prepare()
    }

    @objc func generateFeedback() {
        haptic.generateFeedback()
        blink()
    }

    func blink() {
        let animationKeyPath = "backgroundColor"
        let animation = CABasicAnimation(keyPath: animationKeyPath)
        animation.toValue = UIColor.clear.cgColor
        animation.duration = 0.1
        animation.autoreverses = true
        layer.add(animation, forKey: animationKeyPath)
    }
}

//
//  ViewController.swift
//  Kadai3
//
//  Created by Hiroatsu on 2021/07/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextFiled: UITextField!
    @IBOutlet private weak var rightTextField: UITextField!
    @IBOutlet private weak var leftSwitch: UISwitch!
    @IBOutlet private weak var rightSwitch: UISwitch!
    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButton(_ sender: UIButton) {
        let leftNumber = Int(leftTextFiled.text!) ?? 0
        let rightNumber = Int(rightTextField.text!) ?? 0

        // 左側のスイッチ
        let leftSignedNumber: Int
        if leftSwitch.isOn {
            leftSignedNumber = -leftNumber
        } else {
            leftSignedNumber = leftNumber
        }
        leftLabel.text = String(leftSignedNumber)

        // 右側のスイッチ
        let rightSignedNumber: Int
        if rightSwitch.isOn {
            rightSignedNumber = -rightNumber
        } else {
            rightSignedNumber = rightNumber
        }
        rightLabel.text = String(rightSignedNumber)

        resultLabel.text = String(leftSignedNumber + rightSignedNumber)
    }
}

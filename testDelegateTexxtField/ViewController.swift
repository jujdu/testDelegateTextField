//
//  ViewController.swift
//  testDelegateTexxtField
//
//  Created by Michael Sidoruk on 03/08/2019.
//  Copyright © 2019 Michael Sidoruk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        label.text = textField.text
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        label.text = "I started changing this label"
    }
}


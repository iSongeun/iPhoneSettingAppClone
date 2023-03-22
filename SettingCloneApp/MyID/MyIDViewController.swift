//
//  MyIDViewController.swift
//  SettingCloneApp
//
//  Created by 이송은 on 2023/03/14.
//

import UIKit

class MyIDViewController: UIViewController {

    @IBOutlet weak var CancelButton: UIButton!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.addTarget(self, action: #selector(textfieldDidChange), for: .editingChanged)
        NextButton.isEnabled = false
    }
    
    @objc func textfieldDidChange(sender : UITextField) {
        if sender.text?.isEmpty == true {
            NextButton.isEnabled = false
        }
        else {
            NextButton.isEnabled = true
        }
    }
    
    @IBAction func clickCancel(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

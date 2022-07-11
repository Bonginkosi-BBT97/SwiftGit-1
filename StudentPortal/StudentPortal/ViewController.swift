//
//  ViewController.swift
//  StudentPortal
//
//  Created by IACD-026 on 2022/07/09.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var studentLogoUIImageView: UIImageView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var enterStudentNumberTextField: UITextField!
    
    @IBOutlet weak var enterPasswordTextField: UITextField!
    
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        enterStudentNumberTextField.delegate = self
        enterPasswordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        self.enterStudentNumberTextField.resignFirstResponder()
        self.enterPasswordTextField.resignFirstResponder()
        return true
    
    }

    @IBAction func SubmitButton(_ sender: Any) {
    }
    
}


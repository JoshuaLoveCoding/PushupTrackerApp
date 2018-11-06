//
//  PushupViewController.swift
//  Joshua
//
//  Created by Joshua on 10/30/18.
//  Copyright © 2018 Joshua. All rights reserved.
//

import UIKit

class PushupViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    private var count = 0 {
        didSet {
            countLabel.text = String(count)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
            let name = nameTextField.text ?? "???"
            print("\(name) did \(count) pushup(s)")
            count = 0
    }
    
    @IBAction func noseButtonPressed(_ sender: Any) {
            count += 1
    }

}

extension PushupViewController: UITextFieldDelegate {
    
    //hide keyboard on pressing return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return true
    }
    
    //don't allow numbers
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let decimalCharacters = CharacterSet.decimalDigits
        
        let decimalRange = string.rangeOfCharacter(from: decimalCharacters)
        
        if decimalRange != nil {
            return false
        }
        return true
    }
    
}

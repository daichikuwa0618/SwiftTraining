//
//  ViewController.swift
//  AlamoSB
//
//  Created by Daichi Hayashi on 2020/02/03.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet var changeButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputLabel.text = ""
        // キーボードの種類を変更する
        inputTextField.keyboardType = .default
    }
    
    @IBAction func tapButton(_ sender: Any) {
        let japaneseSentense: String = inputTextField.text ?? ""
        APIClient().convert(japaneseSentense) { (text) in
            self.outputLabel.text = text
        }
    }
}


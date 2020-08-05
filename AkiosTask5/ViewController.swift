//
//  ViewController.swift
//  AkiosTask5
//
//  Created by Nekokichi on 2020/08/05.
//  Copyright © 2020 Nekokichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueField1: UITextField!
    @IBOutlet weak var valueField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func calculate(_ sender: Any) {
        guard let value1 = Int(valueField1.text!) else {
            self.alert("課題5", "割られる数を入力してください")
            return
        }
        guard let value2 = Int(valueField2.text!) else {
            self.alert("課題5", "割る数を入力してください")
            return
        }
        if value1 == 0 {
            self.alert("課題5", "割られる数には0を入力しないでください")
            return
        }
        if value2 == 0 {
            self.alert("課題5", "割る数には0を入力しないでください")
            return
        }
        resultLabel.text = "\(Double(value1) / Double(value2))"
    }
    
    func alert(_ str1:String, _ str2:String) {
        let alert = UIAlertController(title: str1, message: str2, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}


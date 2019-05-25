//
//  ViewController.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 22/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet weak var weightLabel: UILabel!
     @IBOutlet weak var heightLabel: UILabel!
     @IBOutlet weak var bmiLabel: UILabel!
     @IBOutlet weak var weightTextField: UITextField!
     @IBOutlet weak var heightTextField: UITextField!
     @IBOutlet weak var weightMatchLabel: UILabel!
     
     
     
     override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
     }

     @IBOutlet weak var bmiResultLabel: UILabel!
     @IBOutlet weak var weightMatchValue: UILabel!
     
     @IBAction func didClickBtn(_ sender: UIButton) {
//          テキストフィールドの値をDouble型に変換
          let wvalue: Double? = Double(weightTextField.text!)
          let hvalue: Double? = Double(heightTextField.text!)
//          hvalueの値の単位をcmをmに合わせる
          let hchange = hvalue! / 100.0
          //          計算結果を代入
//          BMIの計算
          bmiResultLabel.text =  "\(wvalue! / (hchange * hchange))"
//          適正体重の計算
          weightMatchValue.text = "\((hvalue! * hchange) * 22.0 / 100)kg"
     }
     
}


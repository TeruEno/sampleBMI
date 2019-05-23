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
     
     
     override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
     }

     @IBOutlet weak var bmiResultLabel: UILabel!
     
     @IBAction func didClickBtn(_ sender: UIButton) {
//          計算結果を代入
//          bmiResultLabel.text =
     }
     
}


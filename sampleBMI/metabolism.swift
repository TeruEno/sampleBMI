//
//  metabolism.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 27/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//

import UIKit

class metabolism: UIViewController {
     @IBOutlet weak var weightLabel: UILabel!
     @IBOutlet weak var heightLabel: UILabel!
     @IBOutlet weak var ageLabel: UILabel!
     @IBOutlet weak var weightTextFieldl: UITextField!
     @IBOutlet weak var heightTextField: UITextField!
     @IBOutlet weak var ageTextField: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     @IBAction func didClickBtn(_ sender: UIButton) {
          
          //          BMRの計算
          //          ＜男性＞
          //          66 + 13.7 * wvalue + 5.0 * hvalue – 6.8 * age
          //          ＜女性＞
          //          66.5 + 9.6 * wvalue + 1.7 * hvalue – 7.0 * age
          //          var bmr: Double = 66 + 13.7 * wvalue! + 5.0 * hvalue! - 6.8 * age
     }
     
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ResultViewController.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 25/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
     @IBOutlet weak var bmiLabel: UILabel!
     @IBOutlet weak var weightLabel: UILabel!
     @IBOutlet weak var bmiVallueLabel: UILabel!
     @IBOutlet weak var weightValueLabel: UILabel!
     
     var bmiExit = "bmi"
     var weightExit = "weight"
     var bmrExit = "bmr"
     
    override func viewDidLoad() {
        super.viewDidLoad()

    bmiVallueLabel.text = bmiExit
     weightValueLabel.text = weightExit
        // Do any additional setup after loading the view.
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

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
     @IBOutlet weak var weightTextField: UITextField!
     @IBOutlet weak var heightTextField: UITextField!
   
     
     
     
     override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
     }

     @IBAction func didClickBtn(_ sender: UIButton) {
          //        アラート画面を作成
          if weightTextField.text! == "" || heightTextField.text! == "" {
               let alert = UIAlertController(
               title: "警告",
               message: "値を入力してください",
               preferredStyle: .alert)
               present(alert, animated: true, completion: nil)
               return
          }
//          テキストフィールドの値をDouble型に変換
          let wvalue: Double? = Double(weightTextField.text!)
          let hvalue: Double? = Double(heightTextField.text!)
//          hvalueの値の単位をcmをmに合わせる
          let hchange = hvalue! / 100.0
//          計算結果を代入
//          BMIの計算
//          bmiResultLabel.text =  "\(wvalue! / (hchange * hchange))"
          var bmi: Double = wvalue! / (hchange * hchange)
//          適正体重の計算
//          weightMatchValue.text = "\((hvalue! * hchange) * 22.0 / 100)kg"
          var weight: Double = (hvalue! * hchange) * 22.0 / 100

//
//        画面遷移処理
//          画面遷移時に値を渡す
          performSegue(withIdentifier: "resultView", sender: bmi)
          performSegue(withIdentifier: "resultView", sender: weight)

     }
     
     //     画面遷移準備
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "resultView" {
//               次の画面の取得
               let resultVC = segue.destination as!
                    ResultViewController
               //               次の画面の変数にアクセス
               resultVC.bmiExit = "\(sender as! Double)"
               resultVC.weightExit = sender as! String
               resultVC.bmrExit = sender as! String
          }
     }
}

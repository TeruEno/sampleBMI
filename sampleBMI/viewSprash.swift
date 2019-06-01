//
//  viewSprash.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 26/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//

import UIKit

class viewSprash: UIViewController {
     
    @IBOutlet weak var imageView: UIImageView!
    
     
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     // 画面が表示されたら実行される
     override func viewDidAppear(_ animated: Bool) {
          //            UIImageViewにアニメーションを加える際に使う
          UIView.animate(
               withDuration: 0.2,            // 何秒かけて変化するか
               delay: 1.0,                         // アニメーション開始までの時間
               options: .curveEaseOut,     // オプション
               animations: {() in                  // アニメーション完了時のパラメータ
                    self.imageView.transform = CGAffineTransform(
                         scaleX: 0.8, y: 0.8)
                         .rotated(by: 8)
                    
          },
               completion: {(Bool) in     // アニメーション完了時の処理
                    
          })
          
          UIView.animate(
               withDuration: 0.4,
               delay: 1.3,
               options: .curveEaseOut,
               animations: {() in
                    self.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                    //       alphaは画像の透過度
                    self.imageView.alpha = 0
                    
          },
               completion: {(Bool) in
                    self.performSegue(withIdentifier: "toMain", sender: nil)
                    
          })
          
     }
}

//
//  viewSprash.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 26/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//
import UIKit
import GradientCircularProgress

class viewSprash: UIViewController {
    
    override func viewDidLoad() {
        //    座標
        let rect = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        //    画面作成
        let progress = GradientCircularProgress()
        let progressView = progress.show(frame: rect, message: "Loading...", style: MyStyle())
        view.addSubview(progressView!)
//        3秒後の操作
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            //            メッセージ変更
            progress.updateMessage(message: "Completed")
        }
//        3.47秒後の操作
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.47) {
//        画面削除
        progress.dismiss(progress: progressView!)
        }
//        4.5秒後の操作
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
            self.performSegue(withIdentifier: "toMain", sender: nil)
        }
        
    }
}



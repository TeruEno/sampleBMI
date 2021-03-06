//
//  TableTableViewController.swift
//  sampleBMI
//
//  Created by TeruakiEnomoto on 25/05/2019.
//  Copyright © 2019 TeruakiEnomoto. All rights reserved.
//
//   TableViewはセクションとせるという二つの枠でできている
//   セクションという枠の中にセルがある

import UIKit

class TableTableViewController: UITableViewController {

//
     let list = ["肥満度チェック", "基礎代謝率チェック"]
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
     
     override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
     }

//     numberOfSections
//     セクションの数を決めている
//     戻り値によって決まる
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

//     numberOfRowsInSection
//     セルの数を決めている
//     戻り値によって決まる
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

//    cellForRowAt（超重要）
//     実際に表示されるセルの内容を決めるところ
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//     "reuseIdentifier"という名前のセルの内容を決める
//     最初は"reuseIdentifier"とい名前のセルはないので、自分でstorybordを開いてattributes inspectorのボタンをクリックしてIdentifierに入力する
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

//     cellのtextLabelのtextを上の配列から取ってくる
//     indexPath.row セル番号を取ってくる機能で、セルによって違うものを取ってくるように設定している。
     cell.textLabel?.text = list[indexPath.row]
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          print(list[indexPath.row])
          if list[indexPath.row] == "肥満度チェック" {
               performSegue(withIdentifier: "toBodyMassIndex", sender: nil)
          } else {
               performSegue(withIdentifier: "toHoge", sender: nil)
          }
          
     }
     
}

//
//  ViewController4.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/28.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // ②テーブルに表示するデータの準備
    var CountryList = ["Home", "Visual sort", "Heap sort", "Quiz", "Search","Web","PDF","Introduction"]
    var id = ["A", "B", "C", "D", "E","F","G","H"]
    var vcname = 0
    var result:Int?
     var received :Int?
    // 元からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ③テーブルの行数を指定するメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CountryList.count
    }
    
    // ④セルの中身を設定するメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
       
        // セルに値を設定する
        cell.textLabel!.text = CountryList[indexPath.row]
        return cell
    }
    
    

   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // セルの選択を解除
       // tableView.deselectRow(at: indexPath, animated: true)
        
        // 別の画面に遷移
        
       // performSegue(withIdentifier: "toNext", sender: nil)
    
    
    //func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    //let nextVC:SecondViewController = SecondViewController()
    //self.presentViewController(nextVC, animated: true, completion: nil)
    //tableView.deselectRowAtIndexPath(indexPath, animated: true)
    


   //private func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
          //tableView.deselectRow(at: indexPath, animated: true)
  
           //let storyboard: UIStoryboard = self.storyboard!
         //  let nextView = storyboard.instantiateViewController(withIdentifier: "kk") as! quizViewController
        //   self.present(nextView, animated: true, completion: nil)
  // }
    //セルがタップされた時の処理
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
    result = indexPath.row
    if indexPath.row == 0 {
    performSegue(withIdentifier: "k",sender: self)
    }else if indexPath.row == 1 {
    performSegue(withIdentifier: "one",sender: self)
    }else if indexPath.row == 2 {
    performSegue(withIdentifier: "three",sender: self)
    }
        else if indexPath.row == 3 {
        performSegue(withIdentifier: "four",sender: self)
        }
        else if indexPath.row == 4 {
        performSegue(withIdentifier: "five",sender: self)
        }
        else if indexPath.row == 5 {
        performSegue(withIdentifier: "six",sender: self)
        }
        else if indexPath.row == 6 {
        performSegue(withIdentifier: "seven",sender: self)
        }
        else if indexPath.row == 7 {
        performSegue(withIdentifier: "eight",sender: self)
        }
    }

    //セグエで移動する前にデータを受け渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //セグエがsegue1のときの処理
  if segue.identifier == "k" {
    //移動先のビューコントローラのプロパティに値を設定する
    if let fVC = segue.destination as? ViewController4 {
        fVC.received = result
    }
        
        
    }
  if segue.identifier == "one" {
  //移動先のビューコントローラのプロパティに値を設定する
  if let fVC = segue.destination as? ViewController4 {
      fVC.received = result
  }
      
      
  }
        
    if segue.identifier == "one" {
     //移動先のビューコントローラのプロパティに値を設定する
     if let fVC = segue.destination as? ViewController4 {
         fVC.received = result
     }
         }
        if segue.identifier == "three" {
        //移動先のビューコントローラのプロパティに値を設定する
        if let fVC = segue.destination as? ViewController4 {
            fVC.received = result
        }
            }
        
    }
}

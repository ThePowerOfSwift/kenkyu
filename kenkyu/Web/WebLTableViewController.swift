//
//  WebLTableViewController.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/28.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class WebLTableViewController: UITableViewController {

    // セルに表示するデータ
    let webList = [
        (name:"apple", url:"https://www.apple.com/jp/"),
        (name:"swift heap", url:"https://www.raywenderlich.com/586-swift-algorithm-club-heap-and-priority-queue-data-structure"),
        (name:"movie swift", url:"https://www.youtube.com/watch?v=hJKMyeTTGAI"),
        (name:"google", url:"https://www.google.com/"),
        (name:"youtube", url:"https://www.youtube.com/?gl=JP&tab=r1"),
             (name:"university of Aizu ", url:"https://www.u-aizu.ac.jp/")
    ]
    
    
    
    // MARK: - Table view data source
    // セクションの個数
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // セクション内の行数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 配列webListの値の個数
        return webList.count
    }
    
    // セルを作る
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // テーブルのセルを参照する
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // テーブルにWebListのデータを表示する
        let webData = webList[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = webData.name
        cell.detailTextLabel?.text = webData.url
        
        return cell
    }
    
    // MARK: - Navigation
    
    // セグエで移動する前にデータを受け渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // セグエがshowWebPageのときの処理
        if segue.identifier == "showWebPage" {
            // タップした行番号を取り出す
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // 行のデータを取り出す
                let webData = webList[(indexPath as NSIndexPath).row]
                // 移動先のビューコントローラのdataプロパティに値を設定する
                (segue.destination as! ViewController3).data = webData
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

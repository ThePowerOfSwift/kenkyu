//
//  ViewController3.swift
//  algo
//
//  Created by yuta akatsu on 2019/10/28.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit
import WebKit
class ViewController3: UIViewController {

    
    
    @IBOutlet weak var webView: WKWebView!
    
    var data:(name:String, url:String)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dataが設定されていればwebDataに代入する
        guard let webData = data else {
            return
        }
        // 表示するWebページのURLRequestを作る
        let myURL = URL(string: webData.url)
        let myRequest = URLRequest(url: myURL!)
        // Webを読み込む
        webView.load(myRequest)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



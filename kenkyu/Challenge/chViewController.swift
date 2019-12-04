//
//  chViewController.swift
//  kenkyu
//
//  Created by yuta akatsu on 2019/11/25.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class chViewController: UIViewController {

  
        var z = [Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 10),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100)]
        
    @IBOutlet weak var canvasView: CanvasView!
    
        @IBOutlet weak var df: UITextField!
        
        @IBOutlet weak var text3: UILabel!
        
        
        @IBOutlet weak var judge: UILabel!
        
        
        
        
        
        @IBOutlet var view2: UIImageView!
        
        @IBOutlet var image: UIImageView!
        //
        
        @IBOutlet  var labelArray:[UILabel] = []
        var b = Heap1<Int>(sort: <)
        
        var zz = [Int]()
        var ab :Array<Int> = []
        override func viewDidLoad() {
            super.viewDidLoad()
            labelArray[0].text = " \(z[0]),  \(z[1]),  \(z[2]),  \(z[3]),  \(z[4]),  \(z[5]),  \(z[6])"
            // Do any additional setup after loading the view.
            
            let hi:[Int] = z
            
            var h = Heap1<Int>(sort: >)
            
            h.insert(hi)
            ab = [h.nodes[0],h.nodes[1],h.nodes[2],h.nodes[3],h.nodes[4],h.nodes[5],h.nodes[6]]
            
            //        labelArray[1].text = "\(h.nodes[0]),\(h.nodes[1]),\(h.nodes[2]),\(h.nodes[3]),\(h.nodes[4]),\(h.nodes[5]),\(h.nodes[6])"
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            let vc = segue.destination as! minViewController
//            vc.two = self.z
            //vc.Secondtext = "\(u)"
            
            
            
        }
        @IBAction func clearCanvas(_ sender: Any) {
            canvasView.clearCanvas()
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    @IBAction func newnumber(_ sender: Any) {
        
         z = [Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 10),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100)]
      labelArray[0].text = " \(z[0]),  \(z[1]),  \(z[2]),  \(z[3]),  \(z[4]),  \(z[5]),  \(z[6])"
        
    }
    @IBAction func leftdelet(_ sender: Any) {
        if zz.count > 0{
        zz.removeLast()
         text3.text = "\(zz) "
        }}
    @IBAction func alldelet(_ sender: Any) {
        z = []
        zz = []
        ab = []
        labelArray[0].text = " "
           text3.text! = " "
        labelArray[1].text = " "
    }
    
        @IBAction func push(_ sender: Any) {
            
            
            let resultA:Int? = Int(df.text!)
            
            // if df.text!.isEmpty {return}
            // mainHeap.insert(df.text!)
            
            if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
                if let a1: Int = a0 {
                    let  f = String(a1)
                    zz.append(a1)
                    // 内の箱を開けて値を取り出す
                    //text3.text =
                    
                    // textview2.text = "\(z) ,"
                    
                }
                let hi:[Int] = zz
                
                var h = Heap1<Int>(sort: >)
                
                h.insert(hi)
                let kk:[Int] = zz
                
                var u = Heap1<Int>(sort: <)
                
                u.insert(kk)
                
                text3.text = "\(zz) "
                print(z)
                print(zz)
                //            sort.text = "\(h.nodes)"
                //            min.text = "\(u.nodes)"
                
                if zz == ab{
                    judge.text = "Correct!"
                    labelArray[1].text = "\(h.nodes[0]),\(h.nodes[1]),\(h.nodes[2]),\(h.nodes[3]),\(h.nodes[4]),\(h.nodes[5]),\(h.nodes[6])"
                }
                
            }
            
        }
        
}

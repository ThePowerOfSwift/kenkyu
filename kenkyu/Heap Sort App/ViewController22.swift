//
//  ViewController22.swift
//  algo
//
//  Created by yuta akatsu on 2019/11/05.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class ViewController22: UIViewController {
     @IBOutlet  var labelArray2:[UILabel] = []
     @IBOutlet  var labelArray:[UILabel] = []
    @IBOutlet var rt: UILabel!
     @IBOutlet  var labe:[UILabel] = []
     @IBOutlet  var labe2:[UILabel] = []
    var argString = ""
    
    @IBOutlet var ggg: UILabel!
    var Secondtext = String()
    var two:[Int] = []
    var one:[Int] = []
    override func viewDidLoad() {
           super.viewDidLoad()
        //self.view.sendSubviewToBack()
        
        let hi:[Int] = one
                 
               var h = Heap1<Int>(sort: >)
        
            h.insert(hi)
        
        let k:[Int] = one
             
           var b = Heap1<Int>(sort: <)
         b.insert(k)
        
        let cv:[Int] = two
                 
               var tt = Heap1<Int>(sort: <)
        
            tt.insert(cv)
       
       for i in 0...6{
                if two.count > i {
                    ggg.text = "\(two)"
              labe[i].text = "\(tt.nodes[i])"
        labe2[i].text = "\(tt.nodes[i])"
        }
              }
        
       
        for i in 0...14{
        if one.count > i {
            
            labelArray[i].text = "\(h.nodes[i])"
            labelArray2[i].text = "\(b.nodes[i])"
        }
       }
        
       // for i in 0...14{
            //labelArray[3].text = "\(one[3])"
       // }
           // ②引数をラベルにセット
        
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

//
//  ViewController6.swift
//  algo
//
//  Created by yuta akatsu on 2019/11/04.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class ViewController6: UIViewController {


    
        var z = [Int]()
    
    @IBOutlet var df: UITextField!
    
  
    @IBOutlet var sort: UITextView!
   
    
    @IBOutlet var min: UITextView!
    
    @IBOutlet var text3: UITextView!
    //labelArray:[UILabel] = []

   
var userIsMiddleOfTyping = false
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
      
        // Do any additional setup after loading the view.
    }
    // 編集中に変更があるたびに呼び出されるデリゲートメソッド（変換が適用されない）
   
   
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsMiddleOfTyping{
        let textCurrentDisplay = df!.text!
        df!.text =  textCurrentDisplay + digit
        }else{
            df.text = digit
            userIsMiddleOfTyping = true
        }
    }
    
    var displayValue:Double{
        get {
           return Double(df.text!)!
        }
        set {
            df.text = String(newValue)
        }
    }
    
    @IBAction func kesu(_ sender: Any) {
   
        z = []
        min.text! = " "
       sort.text! = " "
       text3.text! = " "

    }
    @IBAction func push(_ sender: Any) {
   
    
        let resultA:Int? = Int(df.text!)

      // if df.text!.isEmpty {return}
      // mainHeap.insert(df.text!)
       
        if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
            if let a1: Int = a0 {
                let  f = String(a1)
                    z.append(a1)
                // 内の箱を開けて値を取り出す
                //text3.text =
            
               // textview2.text = "\(z) ,"
                print(z)
            }
           let hi:[Int] = z
                    
                  var h = Heap1<Int>(sort: >)
           
               h.insert(hi)
                let kk:[Int] = z
                                  
                    var u = Heap1<Int>(sort: <)
                         
                             u.insert(kk)
          
            text3.text = "\(z) "
            sort.text = "\(h.nodes)"
            min.text = "\(u.nodes)"
            
        }
  // text3.text! = mainHeap.elements.joined(separator: " , ")
        // var str = "134"= df.text
        //var num = Int(str)!
     
     

}
    @IBAction func idou(_ sender: Any) {
        self.performSegue(withIdentifier: "toSecond", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // SecondViewControllerに移動する変数vcを定義する
        let vc = segue.destination as! ViewController22
        //ViewController2のtextにtextFieldのテキストを代入
      
        vc.one = self.z
        //vc.Secondtext = "\(u)"
        

       
    }
    
    @IBAction func top(_ sender: Any) {
         if z != [] {
            
            text3.text = "\(z.removeFirst()) "
            sort.text = "\(sort.text.removeFirst()) "
                                             min.text = "\(min.text.removeFirst()) "
                 df.text = " "
            if z.count >= 1{
            z.removeFirst()
                let resultA:Int? = Int(df.text!)
                       if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
                                if let a1: Int = a0 {
                                    let  f = String(a1)
                                        z.append(a1)
                                    // 内の箱を開けて値を取り出す
                                    //text3.text =
                                
                                   // textview2.text = "\(z) ,"
                                    print(z)
                                }
                               let hi:[Int] = z
                                        
                                      var h = Heap1<Int>(sort: >)
                               
                                   h.insert(hi)
                                    let kk:[Int] = z
                                                      
                                        var u = Heap1<Int>(sort: <)
                                             
                                                 u.insert(kk)

                        text3.text = "\(z) "
                                   sort.text = "\(h.nodes)"
                                   min.text = "\(u.nodes)"
                }
                       
                  //  z.removeLast()
                    //             h.nodes.removeLast()
                     //   u.nodes.removeLast()
                     
            //    text3.text = "\(z.removeLast()) "
                //sort.text = "\(h.nodes.removeLast())"
                //min.text = "\(u.nodes.removeLast())"
           // }
                
         }
            
        }

        
    }
 
    
    @IBAction func random5(_ sender: Any) {
        for i in 0...4{
        random(i)
        }
        df.text = " "}
    @IBAction func delet(_ sender: Any) {
         df.text = " "
        
    }
    @IBAction func random(_ sender: Any) {
        let ran = Int.random(in: 0 ... 100)
        
        df.text = "\(ran)"

    let resultA:Int? = Int(df.text!)
        if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
                 if let a1: Int = a0 {
                     let  f = String(a1)
                         z.append(a1)
                     // 内の箱を開けて値を取り出す
                     //text3.text =
                 
                    // textview2.text = "\(z) ,"
                     print(z)
                 }
                let hi:[Int] = z
                         
                       var h = Heap1<Int>(sort: >)
                
                    h.insert(hi)
                     let kk:[Int] = z
                                       
                         var u = Heap1<Int>(sort: <)
                              
                                  u.insert(kk)
               
            text3.text = "\(z) "
                 sort.text = "\(h.nodes)"
                 min.text = "\(u.nodes)"
         
}
    }
   
    @IBAction func zero(_ sender: Any) {
        df.text = "0"
       
    }
    @IBAction func one(_ sender: Any) {
    df.text = "1"}
    @IBAction func two(_ sender: Any) {
           df.text = "2"
       }
       @IBAction func three(_ sender: Any) {
       df.text = "3"}
       @IBAction func four(_ sender: Any) {
             df.text = "4"
         }
         @IBAction func five(_ sender: Any) {
         df.text = "5"}
         @IBAction func six(_ sender: Any) {
                df.text = "6"
            }
            @IBAction func seven(_ sender: Any) {
            df.text = "7"}
    @IBAction func s(_ sender: Any) {
                  df.text = "8"
              }
              @IBAction func se(_ sender: Any) {
              df.text = "9"}
    @IBAction func y(_ sender: Any) {
    if z != [] {
             df.text = " "
        z.removeFirst()
            let resultA:Int? = Int(df.text!)
                   if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
                            if let a1: Int = a0 {
                                let  f = String(a1)
                                    z.append(a1)
                                // 内の箱を開けて値を取り出す
                                //text3.text =
                            
                               // textview2.text = "\(z) ,"
                                print(z)
                            }
                           let hi:[Int] = z
                                    
                                  var h = Heap1<Int>(sort: >)
                           
                               h.insert(hi)
                                let kk:[Int] = z
                                                  
                                    var u = Heap1<Int>(sort: <)
                                         
                                             u.insert(kk)

                    text3.text = "\(z.removeLast()) "
                              sort.text = "\(h.nodes)"
                              min.text = "\(u.nodes)"
                   
              //  z.removeLast()
                //             h.nodes.removeLast()
                 //   u.nodes.removeLast()
                 
        //    text3.text = "\(z.removeLast()) "
            //sort.text = "\(h.nodes.removeLast())"
            //min.text = "\(u.nodes.removeLast())"
       // }
            
     }
        
        }}
  @IBAction func ra(_ sender: Any) {
    //text3.text! = " "
    
  
    if z != [] {
         df.text = " "
    z.removeLast()
        let resultA:Int? = Int(df.text!)
               if let a0: Int = resultA { // 外の箱を開けて内の箱を取り出す
                        if let a1: Int = a0 {
                            let  f = String(a1)
                                z.append(a1)
                            // 内の箱を開けて値を取り出す
                            //text3.text =
                        
                           // textview2.text = "\(z) ,"
                            print(z)
                        }
                       let hi:[Int] = z
                                
                              var h = Heap1<Int>(sort: >)
                       
                           h.insert(hi)
                            let kk:[Int] = z
                                              
                                var u = Heap1<Int>(sort: <)
                                     
                                         u.insert(kk)

                text3.text = "\(z.removeLast()) "
                sort.text = "\(h.nodes.removeLast())"
                          min.text = "\(u.nodes.removeLast())"
               
          //  z.removeLast()
            //             h.nodes.removeLast()
             //   u.nodes.removeLast()
             
    //    text3.text = "\(z.removeLast()) "
        //sort.text = "\(h.nodes.removeLast())"
        //min.text = "\(u.nodes.removeLast())"
   // }
        
 }
    
}

}
    }

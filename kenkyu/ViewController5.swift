//
//  ViewController5.swift
//  algo
//
//  Created by yuta akatsu on 2019/11/04.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    var z = [Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 10),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100)]
    
    @IBOutlet var max: UILabel!
    @IBOutlet var max2: UILabel!
    @IBOutlet var max3: UILabel!
    @IBOutlet var max4: UILabel!
    @IBOutlet var max5: UILabel!
    @IBOutlet var max6: UILabel!
    @IBOutlet var max7: UILabel!
    
    
   @IBOutlet  var label:[UILabel] = []
   
    
    
    @IBOutlet var view2: UIImageView!
    
    @IBOutlet var image: UIImageView!
    //
       
    @IBOutlet  var labelArray:[UILabel] = []
    var b = Heap1<Int>(sort: <)

    
    override func viewDidLoad() {
        super.viewDidLoad()
labelArray[0].text = " \(z[0]),  \(z[1]),  \(z[2]),  \(z[3]),  \(z[4]),  \(z[5]),  \(z[6])"
        // Do any additional setup after loading the view.
        
     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
       
           let vc = segue.destination as! ViewController22
           
     
          vc.two = self.z
           //vc.Secondtext = "\(u)"
           

          
       }

    
    @IBAction func insert(_ sender: Any) {
        labelArray[0].text = " \(z[0]),  \(z[1]),  \(z[2]),  \(z[3]),  \(z[4]),  \(z[5]),  \(z[6])"
        
        
        let hi:[Int] = z
                 
               var h = Heap1<Int>(sort: >)
        
            h.insert(hi)
        
         labelArray[1].text = "\(h.nodes[0]),\(h.nodes[1]),\(h.nodes[2]),\(h.nodes[3]),\(h.nodes[4]),\(h.nodes[5]),\(h.nodes[6])"
        
        let k:[Int] = z
                 
               var b = Heap1<Int>(sort: <)
            b.insert(k)
        
         labelArray[2].text = " \(b.nodes[0]),\(b.nodes[1]),\(b.nodes[2]),\(b.nodes[3]),\(b.nodes[4]),\(b.nodes[5]),\(b.nodes[6])"
        
        var gh = Heap1(array: z, sort: >)
        labelArray[3].text = "\(gh.nodes)"
        var g = Heap1(array: z, sort: <)
        labelArray[4].text = "\(g.nodes)"
        max.text = "\(h.nodes[0])"
        max2.text = "\(h.nodes[1])"
        max3.text = "\(h.nodes[2])"
        max4.text = "\(h.nodes[3])"
        max5.text = "\(h.nodes[4])"
        max6.text = "\(h.nodes[5])"
        max7.text = "\(h.nodes[6])"
      
        for i in 0...6{
          //  minArray[i].text = "\(b.nodes[i])"
            //min3[i].text = "\(b.nodes[i])"
        label[i].text = "\(h.nodes[i])"
        }
        func prepare2(for segue: UIStoryboardSegue, sender: Any?) {
            
        
            let vc = segue.destination as! ViewController22
            
        
            vc.two = self.z
            //vc.Secondtext = "\(u)"
            

           
        }

        z = [Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 10),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100),Int.random(in: 0 ... 100)]
        func top(_ sender: Any){
            h.nodes.removeFirst()
            z.removeFirst()
            g.nodes.removeFirst()
           gh.nodes.removeFirst()
            b.nodes.removeFirst()
        }
        
    }
    @IBAction func top(_ sender: Any) {
    }
    
    
     
         
}
   



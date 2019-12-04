//
//  ViewController.swift
//  heapsort
//
//  Created by yuta akatsu on 2019/11/07.
//  Copyright © 2019 yuta akatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageIndex = 0
@IBOutlet weak var UIImageView: UIImageView!

    

  
    
    let images = [UIImage(named: "one"), UIImage(named: "two"), UIImage(named: "three"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15")]

override func viewDidLoad() {
super.viewDidLoad()
    super.viewDidLoad()
    
    // 角丸設定
    
    
// Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}
    @IBAction func backImage(_ sender: Any) {
        
            
        
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        UIImageView.image = images[imageIndex]
        }

    @IBAction func nextImage(_ sender: Any) {
     
        if imageIndex < 1 {
            imageIndex += 1
        } else if imageIndex < 2 {
            imageIndex += 1
        } else if imageIndex < 3 {
            imageIndex += 1
        }else if imageIndex < 4 {
            imageIndex += 1
        } else if imageIndex < 5 {
            imageIndex += 1
        }else if imageIndex < 6 {
            imageIndex += 1
        } else if imageIndex < 7 {
            imageIndex += 1
        }else if imageIndex < 8 {
            imageIndex += 1
        } else if imageIndex < 9{
            imageIndex += 1
        } else if imageIndex < 10{
            imageIndex += 1
        } else if imageIndex < 11 {
            imageIndex += 1
        }else if imageIndex <   12 {
            imageIndex += 1
        } else if imageIndex < 13 {
            imageIndex += 1
        }else if imageIndex < 14 {
            imageIndex += 1
        } else if imageIndex < 15 {
            imageIndex -= 14
        }
    
        UIImageView.image = images[imageIndex]
    }
}

//
//  FirstLevelViewController.swift
//  Плиточки
//
//  Created by Никита Зюзин on 26.10.2021.
//

import UIKit

class FirstLevel: UIViewController {
    
    var firstcolumn = ["button1", "button4", "button7"]
    var secondcolumn = ["button2", "button5", "button8"]
    var thirdcolumn = ["button3", "button6", "button9"]
 
    @IBOutlet weak var out1: UIButton!
    @IBOutlet weak var out2: UIButton!
    @IBOutlet weak var out3: UIButton!
    @IBOutlet weak var out4: UIButton!
    @IBOutlet weak var out5: UIButton!
    @IBOutlet weak var out6: UIButton!
    @IBOutlet weak var out7: UIButton!
    @IBOutlet weak var out8: UIButton!
    @IBOutlet weak var out9: UIButton!

    var timer = Timer()
    var prepareCount = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        out1.layer.borderWidth = 2
        out2.layer.borderWidth = 2
        out3.layer.borderWidth = 2
        out4.layer.borderWidth = 2
        out5.layer.borderWidth = 2
        out6.layer.borderWidth = 2
        out7.layer.borderWidth = 2
        out8.layer.borderWidth = 2
        out9.layer.borderWidth = 2
        
      timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(PrepareForBeginTimer), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func PrepareForBeginTimer() {
        
    }
  
    
    @IBAction func act1(_ sender: UIButton) {
        
    }
    
    @IBAction func act2(_ sender: UIButton) {
        
    }
    
    @IBAction func act3(_ sender: UIButton) {
        
    }
    
    @IBAction func act4(_ sender: UIButton) {
        
    }
    
    @IBAction func act5(_ sender: UIButton) {
//        let x = firstcolumn.randomElement()
//        switch x {
//        case "button1": out1.backgroundColor = .red
//        case "button4": out4.backgroundColor = .red
//        case "button7": out7.backgroundColor = .red
//        default:
//            return
//        }
        
    
    }
    
    @IBAction func act6(_ sender: UIButton) {
        
    }
    
    @IBAction func act7(_ sender: UIButton) {
        
    }
    @IBAction func act8(_ sender: UIButton) {
        
    }
    
    @IBAction func act9(_ sender: UIButton) {
        
    }
}

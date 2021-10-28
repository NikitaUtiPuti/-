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
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var prepareMessage: UILabel!
    
    
    var timer = Timer()
    var timer1 = Timer()
    var prepareCount = 4
    var computerChangeCount = 2.0
    
    var computerFirstChange = "button1"
    var computerSecondChange = "button2"
    var computerThirdChange = "button3"
    var playerFirstChange = "button1"
    var playerSecondChange = "button2"
    var playerThirdChange = "button3"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactionOff()
        
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
        prepareCount -= 1
        countLabel.text = String("\(prepareCount)")
        if prepareCount == 0 {
            countLabel.isHidden = true
            prepareMessage.text = "Внимание"
        } else if prepareCount == -2 {
            timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ComputerChangeTimer), userInfo: nil, repeats: true)
            prepareMessage.text = "Повтори!"
            interactionOn()
            timer.invalidate()
            //prepareCount = 4
        } else { return }
    }
    
    @objc func ComputerChangeTimer() {
        computerChangeCount -= 0.5
        switch computerChangeCount {
        case 1.5: computerFirstChange = (firstcolumn.randomElement()!)
        case 1.0: computerSecondChange = (secondcolumn.randomElement()!)
            switch computerFirstChange {
            case "button1": out1.backgroundColor = .red
            case "button4": out4.backgroundColor = .red
            case "button7": out7.backgroundColor = .red
            default: return
        }
        case 0.5: computerThirdChange = (thirdcolumn.randomElement()!)
            switch computerSecondChange {
            case "button2": out2.backgroundColor = .red
            case "button5": out5.backgroundColor = .red
            case "button8": out8.backgroundColor = .red
            default: return
            }
        case 0:
            switch computerThirdChange {
            case "button3": out3.backgroundColor = .red
            case "button6": out6.backgroundColor = .red
            case "button9": out9.backgroundColor = .red
            default: return
            }
        case -0.5: allBackgroundDefault()
        default: return
        }
    }
    
    func allBackgroundDefault() {
        out1.backgroundColor = UIColor.brown
        out2.backgroundColor = UIColor.brown
        out3.backgroundColor = UIColor.brown
        out4.backgroundColor = UIColor(named: "B6F3F5")
        out5.backgroundColor = UIColor(named: "B6F3F5")
        out6.backgroundColor = UIColor(named: "B6F3F5")
        out7.backgroundColor = UIColor(named: "B6F3F5")
        out8.backgroundColor = UIColor(named: "B6F3F5")
        out9.backgroundColor = UIColor(named: "B6F3F5")
    }
  
    func interactionOff() {
        out1.isUserInteractionEnabled = false
        out2.isUserInteractionEnabled = false
        out3.isUserInteractionEnabled = false
        out4.isUserInteractionEnabled = false
        out5.isUserInteractionEnabled = false
        out6.isUserInteractionEnabled = false
        out7.isUserInteractionEnabled = false
        out8.isUserInteractionEnabled = false
        out9.isUserInteractionEnabled = false
    }
    
    func interactionOn() {
        out1.isUserInteractionEnabled = true
        out2.isUserInteractionEnabled = true
        out3.isUserInteractionEnabled = true
        out4.isUserInteractionEnabled = true
        out5.isUserInteractionEnabled = true
        out6.isUserInteractionEnabled = true
        out7.isUserInteractionEnabled = true
        out8.isUserInteractionEnabled = true
        out9.isUserInteractionEnabled = true
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

//Сохранить xyz которые выберет пользователь и сравнить их с сохраненными xyz выбранными с помощью randomelement

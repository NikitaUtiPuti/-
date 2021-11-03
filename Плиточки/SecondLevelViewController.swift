//
//  SecondLevelViewController.swift
//  Плиточки
//
//  Created by Никита Зюзин on 26.10.2021.
//

import UIKit

class SecondLevelViewController: UIViewController {
    
    var firstcolumn = ["button1", "button5", "button9", "button13"]
    var secondcolumn = ["button2", "button6", "button10","button14"]
    var thirdcolumn = ["button3", "button7", "button11","button15"]
    var fourcolumn = ["button4","button8","button12","button16"]
    
    @IBOutlet weak var out1: UIButton!
    @IBOutlet weak var out2: UIButton!
    @IBOutlet weak var out3: UIButton!
    @IBOutlet weak var out4: UIButton!
    @IBOutlet weak var out5: UIButton!
    @IBOutlet weak var out6: UIButton!
    @IBOutlet weak var out7: UIButton!
    @IBOutlet weak var out8: UIButton!
    @IBOutlet weak var out9: UIButton!
    @IBOutlet weak var out10: UIButton!
    @IBOutlet weak var out11: UIButton!
    @IBOutlet weak var out12: UIButton!
    @IBOutlet weak var out13: UIButton!
    @IBOutlet weak var out14: UIButton!
    @IBOutlet weak var out15: UIButton!
    @IBOutlet weak var out16: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var prepareMessage: UILabel!
    
    var timer = Timer()
    var timer1 = Timer()
    var prepareCount = 4
    var computerChangeCount = 2.0
    
    var computerFirstChange = "button"
    var computerSecondChange = "button"
    var computerThirdChange = "button"
    var computerFourthChange = "button"
    var playerFirstChange = "button"
    var playerSecondChange = "button"
    var playerThirdChange = "button"
    var playerFourthChange = "button"
    
    var score = 0
    
    var goodjob = ["Хорошо!","Отлично!","Молодец!","Так держать!"]
    
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
        out10.layer.borderWidth = 2
        out11.layer.borderWidth = 2
        out12.layer.borderWidth = 2
        out13.layer.borderWidth = 2
        out14.layer.borderWidth = 2
        out15.layer.borderWidth = 2
        out16.layer.borderWidth = 2
        
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
            //timer.invalidate()
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
            case "button5": out5.backgroundColor = .red
            case "button9": out9.backgroundColor = .red
            case "button13": out13.backgroundColor = .red
            default: return
        }
        case 0.5: computerThirdChange = (thirdcolumn.randomElement()!)
            switch computerSecondChange {
            case "button2": out2.backgroundColor = .red
            case "button6": out6.backgroundColor = .red
            case "button10": out10.backgroundColor = .red
            case "button14": out14.backgroundColor = .red
            default: return
            }
        case 0: computerFourthChange = (fourcolumn.randomElement()!)
            switch computerThirdChange {
            case "button3": out3.backgroundColor = .red
            case "button7": out7.backgroundColor = .red
            case "button11": out11.backgroundColor = .red
            case "button15": out15.backgroundColor = .red
            default: return
            }
        case -0.5:
            switch computerFourthChange {
            case "button4": out4.backgroundColor = .red
            case "button8": out8.backgroundColor = .red
            case "button12": out12.backgroundColor = .red
            case "button16": out16.backgroundColor = .red
            default: return
            }
        case -1.0: allBackgroundDefault()
                   prepareMessage.text = "Повтори!"
        default: return
        }
    }
    
    func allBackgroundDefault() {
        out1.backgroundColor = UIColor(named: "Плитки")
        out2.backgroundColor = UIColor(named: "Плитки")
        out3.backgroundColor = UIColor(named: "Плитки")
        out4.backgroundColor = UIColor(named: "Плитки")
        out5.backgroundColor = UIColor(named: "Плитки")
        out6.backgroundColor = UIColor(named: "Плитки")
        out7.backgroundColor = UIColor(named: "Плитки")
        out8.backgroundColor = UIColor(named: "Плитки")
        out9.backgroundColor = UIColor(named: "Плитки")
        out10.backgroundColor = UIColor(named: "Плитки")
        out11.backgroundColor = UIColor(named: "Плитки")
        out12.backgroundColor = UIColor(named: "Плитки")
        out13.backgroundColor = UIColor(named: "Плитки")
        out14.backgroundColor = UIColor(named: "Плитки")
        out15.backgroundColor = UIColor(named: "Плитки")
        out16.backgroundColor = UIColor(named: "Плитки")
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
        out10.isUserInteractionEnabled = false
        out11.isUserInteractionEnabled = false
        out12.isUserInteractionEnabled = false
        out13.isUserInteractionEnabled = false
        out14.isUserInteractionEnabled = false
        out15.isUserInteractionEnabled = false
        out16.isUserInteractionEnabled = false
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
        out10.isUserInteractionEnabled = true
        out11.isUserInteractionEnabled = true
        out12.isUserInteractionEnabled = true
        out13.isUserInteractionEnabled = true
        out14.isUserInteractionEnabled = true
        out15.isUserInteractionEnabled = true
        out16.isUserInteractionEnabled = true
    }
    
    func Lose() {
        switch computerFirstChange {
        case "button1": out1.backgroundColor = .red
                        out5.backgroundColor = .black
                        out9.backgroundColor = .black
                        out13.backgroundColor = .black
        case "button5": out5.backgroundColor = .red
                        out1.backgroundColor = .black
                        out9.backgroundColor = .black
                        out13.backgroundColor = .black
        case "button9": out9.backgroundColor = .red
                        out1.backgroundColor = .black
                        out5.backgroundColor = .black
                        out13.backgroundColor = .black
        case "button13": out13.backgroundColor = .red
                        out5.backgroundColor = .black
                        out9.backgroundColor = .black
                        out1.backgroundColor = .black
        default: return
        }
        switch computerSecondChange {
        case "button2": out2.backgroundColor = .red
                        out6.backgroundColor = .black
                        out10.backgroundColor = .black
                        out14.backgroundColor = .black
        case "button6": out6.backgroundColor = .red
                        out2.backgroundColor = .black
                        out10.backgroundColor = .black
                        out14.backgroundColor = .black
        case "button10": out10.backgroundColor = .red
                        out2.backgroundColor = .black
                        out6.backgroundColor = .black
                        out14.backgroundColor = .black
        case "button14": out14.backgroundColor = .red
                        out2.backgroundColor = .black
                        out6.backgroundColor = .black
                        out10.backgroundColor = .black
        default: return
        }
        switch computerThirdChange {
        case "button3": out3.backgroundColor = .red
                        out7.backgroundColor = .black
                        out11.backgroundColor = .black
                        out15.backgroundColor = .black
        case "button7": out7.backgroundColor = .red
                        out3.backgroundColor = .black
                        out11.backgroundColor = .black
                        out15.backgroundColor = .black
        case "button11": out11.backgroundColor = .red
                        out3.backgroundColor = .black
                        out7.backgroundColor = .black
                        out15.backgroundColor = .black
        case "button15": out15.backgroundColor = .red
                        out3.backgroundColor = .black
                        out7.backgroundColor = .black
                        out11.backgroundColor = .black
        default: return
        }
        switch computerFourthChange {
        case "button4": out4.backgroundColor = .red
                        out8.backgroundColor = .black
                        out12.backgroundColor = .black
                        out16.backgroundColor = .black
        case "button8": out8.backgroundColor = .red
                        out4.backgroundColor = .black
                        out12.backgroundColor = .black
                        out16.backgroundColor = .black
        case "button12": out12.backgroundColor = .red
                        out4.backgroundColor = .black
                        out8.backgroundColor = .black
                        out16.backgroundColor = .black
        case "button16": out16.backgroundColor = .red
                        out4.backgroundColor = .black
                        out8.backgroundColor = .black
                        out12.backgroundColor = .black
        default: return
        }
        interactionOff()
        out6.isUserInteractionEnabled = true
        out11.isUserInteractionEnabled = true
        prepareMessage.text = "Вы проиграли"
        out6.backgroundColor = .white
        out11.backgroundColor = .white
        out6.titleLabel?.textColor = .label
        out11.titleLabel?.textColor = .label
        out6.setTitle("ОК", for: .normal)
        out11.setTitle("ОК", for: .normal)
    }
    
    func Win() {
        if playerFirstChange == computerFirstChange,
           playerSecondChange == computerSecondChange,
           playerThirdChange == computerThirdChange,
           playerFourthChange == computerFourthChange {
        score += 1
        scoreLabel.text = "\(score)"
        allBackgroundDefault()
        computerFirstChange = "button"
        computerSecondChange = "button"
        computerThirdChange = "button"
        computerFourthChange = "button"
        playerFirstChange = "button"
        playerSecondChange = "button"
        playerThirdChange = "button"
        playerFourthChange = "button"
        computerChangeCount = 2.0
        prepareCount = -2
        prepareMessage.text = goodjob.randomElement()
        }
    }
    
    @IBAction func actt1(_ sender: UIButton) {
        playerFirstChange = "button1"
        
        if playerFirstChange == computerFirstChange {
            out1.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt2(_ sender: UIButton) {
        playerSecondChange = "button2"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out2.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt3(_ sender: UIButton) {
        playerThirdChange = "button3"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out3.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt4(_ sender: UIButton) {
        playerFourthChange = "button4"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out4.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt5(_ sender: UIButton) {
        playerFirstChange = "button5"
        
        if playerFirstChange == computerFirstChange {
            out5.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt6(_ sender: UIButton) {
        playerSecondChange = "button6"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out6.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
        
        if prepareMessage.text == "Вы проиграли" {
            performSegue(withIdentifier: "unwindsecond", sender: nil)
        }
    }
    
    @IBAction func actt7(_ sender: UIButton) {
        playerThirdChange = "button7"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out7.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt8(_ sender: UIButton) {
        playerFourthChange = "button8"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out8.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt9(_ sender: UIButton) {
        playerFirstChange = "button9"
        
        if playerFirstChange == computerFirstChange {
            out9.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt10(_ sender: UIButton) {
        playerSecondChange = "button10"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out10.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt11(_ sender: UIButton) {
        playerThirdChange = "button11"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out11.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
        
        if prepareMessage.text == "Вы проиграли" {
            performSegue(withIdentifier: "unwindsecond", sender: nil)
        }
    }
    
    @IBAction func actt12(_ sender: UIButton) {
        playerFourthChange = "button12"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out12.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt13(_ sender: UIButton) {
        playerFirstChange = "button13"
        
        if playerFirstChange == computerFirstChange {
            out13.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt14(_ sender: UIButton) {
        playerSecondChange = "button14"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out14.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt15(_ sender: UIButton) {
        playerThirdChange = "button15"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out15.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func actt16(_ sender: UIButton) {
        playerFourthChange = "button16"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out16.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
}

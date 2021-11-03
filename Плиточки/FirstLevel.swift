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
    
    var computerFirstChange = "button"
    var computerSecondChange = "button"
    var computerThirdChange = "button"
    var playerFirstChange = "button"
    var playerSecondChange = "button"
    var playerThirdChange = "button"
    
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
            //interactionOn()
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
                   interactionOn()
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
    
    func Lose() {
        switch computerFirstChange {
        case "button1": out1.backgroundColor = .red
                        out4.backgroundColor = .black
                        out7.backgroundColor = .black
        case "button4": out4.backgroundColor = .red
                        out1.backgroundColor = .black
                        out7.backgroundColor = .black
        case "button7": out7.backgroundColor = .red
                        out1.backgroundColor = .black
                        out4.backgroundColor = .black
        default: return
        }
        switch computerSecondChange {
        case "button2": out2.backgroundColor = .red
                        out5.backgroundColor = .black
                        out8.backgroundColor = .black
        case "button5": out5.backgroundColor = .red
                        out2.backgroundColor = .black
                        out8.backgroundColor = .black
        case "button8": out8.backgroundColor = .red
                        out2.backgroundColor = .black
                        out5.backgroundColor = .black
        default: return
        }
        switch computerThirdChange {
        case "button3": out3.backgroundColor = .red
                        out6.backgroundColor = .black
                        out9.backgroundColor = .black
        case "button6": out6.backgroundColor = .red
                        out3.backgroundColor = .black
                        out9.backgroundColor = .black
        case "button9": out9.backgroundColor = .red
                        out3.backgroundColor = .black
                        out6.backgroundColor = .black
        default: return
        }
        interactionOff()
        out5.isUserInteractionEnabled = true
        prepareMessage.text = "Вы проиграли"
        out5.backgroundColor = .white
        out5.titleLabel?.textColor = .label
        out5.setTitle("ОК", for: .normal)
    }
    
    func Win() {
        if playerFirstChange == computerFirstChange,
           playerSecondChange == computerSecondChange,
           playerThirdChange == computerThirdChange {
        score += 1
        scoreLabel.text = "\(score)"
        allBackgroundDefault()
        computerFirstChange = "button"
        computerSecondChange = "button"
        computerThirdChange = "button"
        playerFirstChange = "button"
        playerSecondChange = "button"
        playerThirdChange = "button"
        computerChangeCount = 2.0
        prepareCount = -2
        prepareMessage.text = goodjob.randomElement()
        interactionOff()
        }
    }
    
    
    
    
    @IBAction func act1(_ sender: UIButton) {
        
        playerFirstChange = "button1"
        
        if playerFirstChange == computerFirstChange {
            out1.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act2(_ sender: UIButton) {
        
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
    
    @IBAction func act3(_ sender: UIButton) {
        
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
    
    @IBAction func act4(_ sender: UIButton) {
        
        playerFirstChange = "button4"
        
        if playerFirstChange == computerFirstChange {
            out4.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act5(_ sender: UIButton) {
        
        if prepareMessage.text == "Вы проиграли" {
            performSegue(withIdentifier: "unwindfirst", sender: nil)
        }
        
        playerSecondChange = "button5"
        
        if playerSecondChange == computerSecondChange,
            playerFirstChange != "button"            {
            out5.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act6(_ sender: UIButton) {
        
        playerThirdChange = "button6"
        
        if playerThirdChange == computerThirdChange,
           playerSecondChange != "button"          {
            out6.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act7(_ sender: UIButton) {
        
        playerFirstChange = "button7"
        
         if playerFirstChange == computerFirstChange {
            out7.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act8(_ sender: UIButton) {
        
        playerSecondChange = "button8"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out8.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func act9(_ sender: UIButton) {
        
        playerThirdChange = "button9"
        
        if playerThirdChange == computerThirdChange,
           playerSecondChange != "button"          {
            out9.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
}










//Переход к следующим уровням




//Подключить REALM (Модель: имя и рекорд)
//(Имя вводится при новом рекорде, рекорд отображаетя на мэйн экране а имя и рекорд на странице с рекордами)
//(Все это происходит на отдельном вьюконтроллере который выкидывает на страницу рекордов с уже добавленной новой записью ИМЯ-РЕКОРД


//
//  ThirdLevelViewController.swift
//  Плиточки
//
//  Created by Никита Зюзин on 26.10.2021.
//

import UIKit

class ThirdLevelViewController: UIViewController {
    
    var firstcolumn = ["button1", "button6", "button11", "button16","button21"]
    var secondcolumn = ["button2", "button7", "button12","button17","button22"]
    var thirdcolumn = ["button3", "button8", "button13","button18","button23"]
    var fourcolumn = ["button4","button9","button14","button19","button24"]
    var fivecolumn = ["button5","button10","button15","button20","button25"]
    
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
    @IBOutlet weak var out17: UIButton!
    @IBOutlet weak var out18: UIButton!
    @IBOutlet weak var out19: UIButton!
    @IBOutlet weak var out20: UIButton!
    @IBOutlet weak var out21: UIButton!
    @IBOutlet weak var out22: UIButton!
    @IBOutlet weak var out23: UIButton!
    @IBOutlet weak var out24: UIButton!
    @IBOutlet weak var out25: UIButton!
    @IBOutlet weak var prepareMessage: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var timer = Timer()
    var timer1 = Timer()
    var prepareCount = 4
    var computerChangeCount = 2.0
    
    var computerFirstChange = "button"
    var computerSecondChange = "button"
    var computerThirdChange = "button"
    var computerFourthChange = "button"
    var computerFifthChange = "button"
    var playerFirstChange = "button"
    var playerSecondChange = "button"
    var playerThirdChange = "button"
    var playerFourthChange = "button"
    var playerFifthChange = "button"
    
    var score = 0
    
    var goodjob = ["Хорошо!","Отлично!","Молодец!","Так держать!"]

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
        out10.layer.borderWidth = 2
        out11.layer.borderWidth = 2
        out12.layer.borderWidth = 2
        out13.layer.borderWidth = 2
        out14.layer.borderWidth = 2
        out15.layer.borderWidth = 2
        out16.layer.borderWidth = 2
        out17.layer.borderWidth = 2
        out18.layer.borderWidth = 2
        out19.layer.borderWidth = 2
        out20.layer.borderWidth = 2
        out21.layer.borderWidth = 2
        out22.layer.borderWidth = 2
        out23.layer.borderWidth = 2
        out24.layer.borderWidth = 2
        out25.layer.borderWidth = 2
      
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
            case "button6": out6.backgroundColor = .red
            case "button11": out11.backgroundColor = .red
            case "button16": out16.backgroundColor = .red
            case "button21": out21.backgroundColor = .red
            default: return
        }
        case 0.5: computerThirdChange = (thirdcolumn.randomElement()!)
            switch computerSecondChange {
            case "button2": out2.backgroundColor = .red
            case "button7": out7.backgroundColor = .red
            case "button12": out12.backgroundColor = .red
            case "button17": out17.backgroundColor = .red
            case "button22": out22.backgroundColor = .red
            default: return
            }
        case 0: computerFourthChange = (fourcolumn.randomElement()!)
            switch computerThirdChange {
            case "button3": out3.backgroundColor = .red
            case "button8": out8.backgroundColor = .red
            case "button13": out13.backgroundColor = .red
            case "button18": out18.backgroundColor = .red
            case "button23": out23.backgroundColor = .red
            default: return
            }
        case -0.5: computerFifthChange = (fivecolumn.randomElement()!)
            switch computerFourthChange {
            case "button4": out4.backgroundColor = .red
            case "button9": out9.backgroundColor = .red
            case "button14": out14.backgroundColor = .red
            case "button19": out19.backgroundColor = .red
            case "button24": out24.backgroundColor = .red
            default: return
            }
        case -1.0:
            switch computerFifthChange {
            case "button5": out5.backgroundColor = .red
            case "button10": out10.backgroundColor = .red
            case "button15": out15.backgroundColor = .red
            case "button20": out20.backgroundColor = .red
            case "button25": out25.backgroundColor = .red
            default: return
            }
        case -1.5: allBackgroundDefault()
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
        out10.backgroundColor = UIColor(named: "Плитки")
        out11.backgroundColor = UIColor(named: "Плитки")
        out12.backgroundColor = UIColor(named: "Плитки")
        out13.backgroundColor = UIColor(named: "Плитки")
        out14.backgroundColor = UIColor(named: "Плитки")
        out15.backgroundColor = UIColor(named: "Плитки")
        out16.backgroundColor = UIColor(named: "Плитки")
        out17.backgroundColor = UIColor(named: "Плитки")
        out18.backgroundColor = UIColor(named: "Плитки")
        out19.backgroundColor = UIColor(named: "Плитки")
        out20.backgroundColor = UIColor(named: "Плитки")
        out21.backgroundColor = UIColor(named: "Плитки")
        out22.backgroundColor = UIColor(named: "Плитки")
        out23.backgroundColor = UIColor(named: "Плитки")
        out24.backgroundColor = UIColor(named: "Плитки")
        out25.backgroundColor = UIColor(named: "Плитки")
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
        out17.isUserInteractionEnabled = false
        out18.isUserInteractionEnabled = false
        out19.isUserInteractionEnabled = false
        out20.isUserInteractionEnabled = false
        out21.isUserInteractionEnabled = false
        out22.isUserInteractionEnabled = false
        out23.isUserInteractionEnabled = false
        out24.isUserInteractionEnabled = false
        out25.isUserInteractionEnabled = false
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
        out17.isUserInteractionEnabled = true
        out18.isUserInteractionEnabled = true
        out19.isUserInteractionEnabled = true
        out20.isUserInteractionEnabled = true
        out21.isUserInteractionEnabled = true
        out22.isUserInteractionEnabled = true
        out23.isUserInteractionEnabled = true
        out24.isUserInteractionEnabled = true
        out25.isUserInteractionEnabled = true
    }
    
    func Lose() {
        switch computerFirstChange {
        case "button1": out1.backgroundColor = .red
                        out6.backgroundColor = .black
                        out11.backgroundColor = .black
                        out16.backgroundColor = .black
                        out21.backgroundColor = .black
        case "button6": out1.backgroundColor = .black
                        out6.backgroundColor = .red
                        out11.backgroundColor = .black
                        out16.backgroundColor = .black
                        out21.backgroundColor = .black
        case "button11": out1.backgroundColor = .black
                        out6.backgroundColor = .black
                        out11.backgroundColor = .red
                        out16.backgroundColor = .black
                        out21.backgroundColor = .black
        case "button16": out1.backgroundColor = .black
                        out6.backgroundColor = .black
                        out11.backgroundColor = .black
                        out16.backgroundColor = .red
                        out21.backgroundColor = .black
        case "button21": out1.backgroundColor = .black
                        out6.backgroundColor = .black
                        out11.backgroundColor = .black
                        out16.backgroundColor = .black
                        out21.backgroundColor = .red
        default: return
        }
        switch computerSecondChange {
        case "button2": out2.backgroundColor = .red
                        out7.backgroundColor = .black
                        out12.backgroundColor = .black
                        out17.backgroundColor = .black
                        out22.backgroundColor = .black
        case "button7": out2.backgroundColor = .black
                        out7.backgroundColor = .red
                        out12.backgroundColor = .black
                        out17.backgroundColor = .black
                        out22.backgroundColor = .black
        case "button12": out2.backgroundColor = .black
                        out7.backgroundColor = .black
                        out12.backgroundColor = .red
                        out17.backgroundColor = .black
                        out22.backgroundColor = .black
        case "button17": out2.backgroundColor = .black
                        out7.backgroundColor = .black
                        out12.backgroundColor = .black
                        out17.backgroundColor = .red
                        out22.backgroundColor = .black
        case "button22": out2.backgroundColor = .black
                        out7.backgroundColor = .black
                        out12.backgroundColor = .black
                        out17.backgroundColor = .black
                        out22.backgroundColor = .red
        default: return
        }
        switch computerThirdChange {
        case "button3": out3.backgroundColor = .red
                        out8.backgroundColor = .black
                        out13.backgroundColor = .black
                        out18.backgroundColor = .black
                        out23.backgroundColor = .black
        case "button8": out3.backgroundColor = .black
                        out8.backgroundColor = .red
                        out13.backgroundColor = .black
                        out18.backgroundColor = .black
                        out23.backgroundColor = .black
        case "button13": out3.backgroundColor = .black
                        out8.backgroundColor = .black
                        out13.backgroundColor = .red
                        out18.backgroundColor = .black
                        out23.backgroundColor = .black
        case "button18": out3.backgroundColor = .black
                        out8.backgroundColor = .black
                        out13.backgroundColor = .black
                        out18.backgroundColor = .red
                        out23.backgroundColor = .black
        case "button23": out3.backgroundColor = .black
                        out8.backgroundColor = .black
                        out13.backgroundColor = .black
                        out18.backgroundColor = .black
                        out23.backgroundColor = .red
        default: return
        }
        switch computerFourthChange {
        case "button4": out4.backgroundColor = .red
                        out9.backgroundColor = .black
                        out14.backgroundColor = .black
                        out19.backgroundColor = .black
                        out24.backgroundColor = .black
        case "button9": out4.backgroundColor = .black
                        out9.backgroundColor = .red
                        out14.backgroundColor = .black
                        out19.backgroundColor = .black
                        out24.backgroundColor = .black
        case "button14": out4.backgroundColor = .black
                        out9.backgroundColor = .black
                        out14.backgroundColor = .red
                        out19.backgroundColor = .black
                        out24.backgroundColor = .black
        case "button19": out4.backgroundColor = .black
                        out9.backgroundColor = .black
                        out14.backgroundColor = .black
                        out19.backgroundColor = .red
                        out24.backgroundColor = .black
        case "button24": out4.backgroundColor = .black
                        out9.backgroundColor = .black
                        out14.backgroundColor = .black
                        out19.backgroundColor = .black
                        out24.backgroundColor = .red
        default: return
        }
        switch computerFifthChange {
        case "button5": out5.backgroundColor = .red
                        out10.backgroundColor = .black
                        out15.backgroundColor = .black
                        out20.backgroundColor = .black
                        out25.backgroundColor = .black
        case "button10": out5.backgroundColor = .black
                        out10.backgroundColor = .red
                        out15.backgroundColor = .black
                        out20.backgroundColor = .black
                        out25.backgroundColor = .black
        case "button15": out5.backgroundColor = .black
                        out10.backgroundColor = .black
                        out15.backgroundColor = .red
                        out20.backgroundColor = .black
                        out25.backgroundColor = .black
        case "button20": out5.backgroundColor = .black
                        out10.backgroundColor = .black
                        out15.backgroundColor = .black
                        out20.backgroundColor = .red
                        out25.backgroundColor = .black
        case "button25": out5.backgroundColor = .black
                        out10.backgroundColor = .black
                        out15.backgroundColor = .black
                        out20.backgroundColor = .black
                        out25.backgroundColor = .red
        default: return
        }
        interactionOff()
        out13.isUserInteractionEnabled = true
        prepareMessage.text = "Вы проиграли"
        out13.backgroundColor = .white
        out13.titleLabel?.textColor = .label
        out13.setTitle("ОК", for: .normal)
    }
    
    func Win() {
        if playerFirstChange == computerFirstChange,
           playerSecondChange == computerSecondChange,
           playerThirdChange == computerThirdChange,
           playerFourthChange == computerFourthChange,
           playerFifthChange == computerFifthChange   {
        score += 1
        scoreLabel.text = "\(score)"
        allBackgroundDefault()
        computerFirstChange = "button"
        computerSecondChange = "button"
        computerThirdChange = "button"
        computerFourthChange = "button"
        computerFifthChange = "button"
        playerFirstChange = "button"
        playerSecondChange = "button"
        playerThirdChange = "button"
        playerFourthChange = "button"
        playerFifthChange = "button"
        computerChangeCount = 2.0
        prepareCount = -2
        prepareMessage.text = goodjob.randomElement()
        interactionOff()
        }
    }
    
    @IBAction func acttt1(_ sender: UIButton) {
        playerFirstChange = "button1"
        
        if playerFirstChange == computerFirstChange {
            out1.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt2(_ sender: UIButton) {
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
    
    @IBAction func acttt3(_ sender: UIButton) {
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
    
    @IBAction func acttt4(_ sender: UIButton) {
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
    
    @IBAction func acttt5(_ sender: UIButton) {
        playerFifthChange = "button5"
        
        if playerFifthChange == computerFifthChange,
        playerThirdChange != "button"             {
            out5.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt6(_ sender: UIButton) {
        playerFirstChange = "button6"
        
        if playerFirstChange == computerFirstChange {
            out6.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt7(_ sender: UIButton) {
        playerSecondChange = "button7"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out7.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt8(_ sender: UIButton) {
        playerThirdChange = "button8"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out8.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt9(_ sender: UIButton) {
        playerFourthChange = "button9"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out9.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt10(_ sender: UIButton) {
        playerFifthChange = "button10"
        
        if playerFifthChange == computerFifthChange,
        playerThirdChange != "button"             {
            out10.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt11(_ sender: UIButton) {
        playerFirstChange = "button11"
        
        if playerFirstChange == computerFirstChange {
            out11.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt12(_ sender: UIButton) {
        playerSecondChange = "button12"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out12.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt13(_ sender: UIButton) {
        playerThirdChange = "button13"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out13.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
        
        if prepareMessage.text == "Вы проиграли" {
            performSegue(withIdentifier: "unwindthird", sender: nil)
        }
    }
    
    @IBAction func acttt14(_ sender: UIButton) {
        playerFourthChange = "button14"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out14.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt15(_ sender: UIButton) {
        playerFifthChange = "button15"
        
        if playerFifthChange == computerFifthChange,
        playerThirdChange != "button"             {
            out15.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt16(_ sender: UIButton) {
        playerFirstChange = "button16"
        
        if playerFirstChange == computerFirstChange {
            out16.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt17(_ sender: UIButton) {
        playerSecondChange = "button17"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out17.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt18(_ sender: UIButton) {
        playerThirdChange = "button18"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out18.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt19(_ sender: UIButton) {
        playerFourthChange = "button19"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out19.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt20(_ sender: UIButton) {
        playerFifthChange = "button20"
        
        if playerFifthChange == computerFifthChange,
        playerThirdChange != "button"             {
            out20.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt21(_ sender: UIButton) {
        playerFirstChange = "button21"
        
        if playerFirstChange == computerFirstChange {
            out21.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt22(_ sender: UIButton) {
        playerSecondChange = "button22"
        
        if playerSecondChange == computerSecondChange,
           playerFirstChange != "button"             {
            out22.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt23(_ sender: UIButton) {
        playerThirdChange = "button23"
        
        if playerThirdChange == computerThirdChange,
        playerSecondChange != "button"             {
            out23.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt24(_ sender: UIButton) {
        playerFourthChange = "button24"
        
        if playerFourthChange == computerFourthChange,
        playerThirdChange != "button"             {
            out24.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    @IBAction func acttt25(_ sender: UIButton) {
        playerFifthChange = "button25"
        
        if playerFifthChange == computerFifthChange,
        playerThirdChange != "button"             {
            out25.backgroundColor = .red
        }
        else {
               Lose()
        }
        Win()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

//
//  ViewController.swift
//  Плиточки
//
//  Created by Никита Зюзин on 26.10.2021.
//

import UIKit

class LevelandPlayViewController: UIViewController {

    
    @IBOutlet weak var firstLevel: UIButton!
    
    
    @IBOutlet weak var secondLevel: UIButton!
    
    
    @IBOutlet weak var thirdLevel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstLevel.layer.borderWidth = 2.0
        secondLevel.layer.borderWidth = 2.0
        thirdLevel.layer.borderWidth = 2.0
        
    }

    @IBAction func firstLvlPlay(_ sender: UIButton) {
        
       performSegue(withIdentifier: "firstlvlsegue", sender: sender)
        
    }
    
    @IBAction func secondLvlPlay(_ sender: UIButton) {
        
    }
    
    @IBAction func thirdLvlPlay(_ sender: UIButton) {
        
    }
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "firstlvlsegue" {
//
//               let _ = segue.destination as! FirstLevelViewController
//
//        }
    
}



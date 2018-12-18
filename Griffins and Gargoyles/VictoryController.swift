//
//  VictoryController.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 12/12/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class VictoryController: UIViewController {
    
    
    
    @IBOutlet weak var btnDone: UIButton!
    @IBOutlet weak var victoryMessage: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var timer = Timer()
    var monster = monsters[monterRow]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        victoryMessage.text="YOU \(battleState)"
        
        progressBar.progress = Float(hero.exp)/(Float(hero.lvl)*10)
        
        btnDone.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
    }
    
    
    @objc func updateTimer() {
        timer.invalidate()
        if(battleState == "win"){
            //progressBar.progress = 1.0
            if(hero.gainExp(exp: monster.exp)){
                setProgress(valor: 1)
                sleep(3)
                
            }
            
            
            
        }else{
            
        }
        
        setProgress(valor: Float(hero.exp)/(Float(hero.lvl)*10))
        btnDone.isHidden = false
        
    }
    
    func setProgress(valor: Float){
        progressBar.setProgress(valor, animated: true)
    }
    

    
    
    
}

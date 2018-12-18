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
            if(hero.gainExp(exp: monster.exp)){
                progressBar.setProgress(1, animated: true)
                progressBar.setProgress(0, animated: false)
            }
            
            
            
        }
            
        progressBar.setProgress(Float(hero.exp)/(Float(hero.lvl)*10), animated: true)
            btnDone.isHidden = false
        
    }
}

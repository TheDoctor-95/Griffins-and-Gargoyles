//
//  Monster.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 14/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit


class Monster{
    var name : String
    var life : Int
    var timesDefeat : Int
    var minLvl : Int
    var baseAtack : Int
    var augment : Int
    var image : UIImage
    var exp : Int
    var money : Int
    
    init(minLvl: Int,life: Int ,image: String, baseAtack: Int, augment: Int, money: Int, exp: Int){
        self.name = image
        self.life = life
        self.timesDefeat = 0
        self.minLvl = minLvl
        self.baseAtack = baseAtack
        self.augment = augment
        self.money = money
        self.exp = exp
        self.image = UIImage(named: image)!
        
    }
    
    func atack() -> Int {
        return (self.baseAtack + (self.augment*self.timesDefeat))*2
    }
    
    
}

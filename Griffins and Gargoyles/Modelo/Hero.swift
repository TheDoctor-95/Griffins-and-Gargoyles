//
//  Hero.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 14/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class Hero {
    
    var name:String
    var image: UIImage
    var lvl: Int
    var exp: Int
    var baseLife: Int
    var baseAtq: Int
    var baseMag: Int
    var baseDef: Int
    var baseLck: Int
    var equip: Equip
    var money: Int
    
    init(){
        self.name = ""
        self.image = UIImage(named: "heroe4")!
        self.lvl = 0
        self.exp = 0
        self.baseLife = 0
        self.baseAtq = 0
        self.baseMag = 0
        self.baseDef = 0
        self.baseLck = 0
        self.equip = Equip()
        self.money = 0
    }
    
    init(name: String, image: String, lvl: Int, life: Int, atq: Int, mag: Int, def: Int, lck: Int, equip:Equip, money: Int){
        self.name = name
        self.image = UIImage(named: image)!
        self.lvl = lvl
        self.exp = 0
        self.baseLife = life
        self.baseAtq = atq
        self.baseMag = mag
        self.baseDef = def
        self.baseLck = def
        self.equip = equip
        self.money = money
    }
    
    func getAtaque() -> Int {
        var atk = self.baseAtq
        for item in self.equip.itemList {
            atk += item.value.atack
        }
        return atk
    }
    
    func getDefence() -> Int {
        var def = self.baseDef
        for item in self.equip.itemList {
            def += item.value.defense
        }
        return def
    }
    
    func getMagia() -> Int {
        var mag = self.baseMag
        for item in self.equip.itemList {
            mag += item.value.magic
        }
        return mag
    }
    
    func getLuck() -> Int {
        var lck = self.baseAtq
        for item in self.equip.itemList {
            lck += item.value.luck
        }
        return lck
    }
    
    func stat() -> Int {
        return (getLuck()+getMagia()+getAtaque()+getDefence())/4
    }
    
    func gainExp(exp: Int) -> Bool {
        self.exp += exp
        
        if(self.exp>=(self.lvl*10)){
            self.exp -= self.lvl*10
            self.lvl += 1
            return true
        }
        return false
        
    }
    
}

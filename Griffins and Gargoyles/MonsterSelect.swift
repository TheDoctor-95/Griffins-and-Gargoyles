//
//  MonsterSelect.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 04/12/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation

import UIKit

var monsters = [Monster]()
var monterRow: Int = 0;

class MonsterSelect: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var pikerView: UIPickerView!
    
    @IBOutlet weak var fightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(monsters.count==0){
            
            let monster1 = Monster(minLvl: 1,life: 1, image: "monster1", baseAtack: 10, augment: 5, money: 5, exp: 3)
            
            monsters.append(monster1)
            
            let monster2 = Monster(minLvl: 1,life: 3, image: "monster2", baseAtack: 13, augment: 8, money: 7, exp: 4)
            
            monsters.append(monster2)
            
            let monster3 = Monster(minLvl: 1, life: 2, image: "monster3", baseAtack: 15, augment: 2, money: 8, exp: 5)
            
            monsters.append(monster3)
            
            let monster4 = Monster(minLvl: 6, life: 2, image: "monster4", baseAtack: 5, augment: 5, money: 100, exp: 10)
            
            monsters.append(monster4)
            
            let monster5 = Monster(minLvl: 6, life: 3, image: "monster5", baseAtack: 5, augment: 5, money: 100, exp: 12)
            
            monsters.append(monster5)
            
        }
        pikerView.delegate = self
        pikerView.dataSource = self
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return monsters.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let item : UIView = UIView(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width-30, height: 100))
        
        
        let label = UILabel(frame: CGRect(x: 130, y: 0, width: pickerView.bounds.width/2, height: 33))
        let label2 = UILabel(frame: CGRect(x: 130, y: 33, width: pickerView.bounds.width/2, height: 33))
        let label3 = UILabel(frame: CGRect(x: 130, y: 66, width: pickerView.bounds.width/2, height: 33))
        
        label.text = "atack \(monsters[row].atack())"
        label2.text = "EXP \(monsters[row].exp)"
        label3.text = "GOLD: \(monsters[row].money)"
        let image = UIImageView(frame: CGRect(x: 5, y: 5, width: 90, height: 90))
        
        image.image = monsters[row].image
        
        item.addSubview(label)
        item.addSubview(label2)
        item.addSubview(label3)
        item.addSubview(image)
        
        if(hero.lvl < monsters[row].minLvl){
            
            print(row, "min LVL no alcanzado")
            
            let labelMinLvl = UILabel(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width-30, height: 100))
            
            labelMinLvl.text = "MIN LVL \(monsters[row].minLvl)"
            
            labelMinLvl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6646952025)
            labelMinLvl.textColor = .white
            labelMinLvl.textAlignment = .center
            labelMinLvl.font = UIFont(name: "System", size: 25)
            
            item.addSubview(labelMinLvl)
        }

        
        
        return item
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        monterRow = row
        
        if(hero.lvl < monsters[row].minLvl){
            fightButton.isHidden = true
        }else{
            fightButton.isHidden = false
        }
    }
    
    
}

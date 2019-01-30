//
//  ShopController.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 27/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class ShopController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var itemList: [Item] = [Item]()
    
    @IBOutlet weak var goldLabel: UILabel!
    var selected: Int = 1
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        let heroLvl = hero.lvl
        var cant: Int = 1
        
        if(heroLvl>10){
            cant=2
        }else if(heroLvl>20){
            cant=3
        }
        
        goldLabel.text = String(hero.money)
        
        
        
        for i in 1...cant{
            let bigAugment = 3*heroLvl + i*5
            let mediumAugment = 2*heroLvl + i*5
            let smallAugment = heroLvl + i*5
            
            //let boot = 1
            
            let arrow = Item(atack: (1 + bigAugment), defense:  (0), magic:(0), luck:  (3 + mediumAugment), price: (50 * i), minLvl: heroLvl, image: "arrow\(i)", part: "hand")
            
            itemList.append(arrow)
            
            print("load arrow \(i)")
            
            let sword = Item(atack: (5 + bigAugment), defense: (4), magic: (0), luck: (1+smallAugment), price: 42*i, minLvl: heroLvl, image: "sword\(i)", part: "hand")
            
            itemList.append(sword)
            
            print("load sword \(i)")
            
            let magicSword = Item(atack: (smallAugment), defense: (3), magic: (5 + bigAugment), luck: 1+bigAugment, price: 32*i, minLvl: heroLvl, image: "magicSword\(i)", part: "hand")
            
            itemList.append(magicSword)
            
            print("load magic Sword \(i)")
            
            let helmet = Item(atack: 0, defense: (5+mediumAugment), magic: 0, luck: 2 + smallAugment, price: 40*i, minLvl: heroLvl, image: "helmet\(i)", part: "head")
            
            itemList.append(helmet)
            
            print("load helmet \(i)")
            
            /*let sombrero
            
            let scepter
            
            let shield*/
            
            let cap = Item(atack: (0), defense:  (2 + smallAugment), magic:  (4 + mediumAugment), luck:  (2 + mediumAugment), price: (50 * i), minLvl: heroLvl, image: "cap\(i)", part: "pecho")
            
            itemList.append(cap)
            
            print("load cap \(i)")
            
            let armour = Item(atack: (2+smallAugment), defense: (6 + bigAugment), magic: (0), luck: (1+smallAugment), price: 70*i , minLvl: heroLvl, image: "armour\(i)", part: "pecho")
            
            itemList.append(armour)
            
            print("load armour \(i)")
            
            //let ring
            
            
            
            
            
            
            
        }
        
        itemList.sort{ $0.name < $1.name }
        
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemList.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = row
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let item : UIView = UIView(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width-30, height: 100))
        
        let label = UILabel(frame: CGRect(x: 130, y: 0, width: pickerView.bounds.width/2, height: 33))
        let label2 = UILabel(frame: CGRect(x: 130, y: 33, width: pickerView.bounds.width/2, height: 33))
        let label3 = UILabel(frame: CGRect(x: 130, y: 66, width: pickerView.bounds.width/2, height: 33))

        label.text = "atack \(itemList[row].atack)       magic \(itemList[row].magic) "
        label2.text = "defense \(itemList[row].defense)    luck \(itemList[row].luck)"
        label3.text = "GOLD: \(itemList[row].price)"
        let image = UIImageView(frame: CGRect(x: 5, y: 5, width: 90, height: 90))
        
        image.image = itemList[row].image
        
        item.addSubview(label)
        item.addSubview(label2)
        item.addSubview(label3)
        item.addSubview(image)
        
        return item
    }
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    @IBAction func buy(_ sender: Any) {
        let alert: UIAlertController
        
        if(hero.money >= itemList[selected].price) {
            hero.equip.addItem(item: itemList[selected])
            hero.money -= itemList[selected].price
            alert = UIAlertController(title: "ITEM BOUGHT", message: "You have bought this item.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Keep Buying", style: .default, handler: nil))
            ∂
            
        }else{
            alert = UIAlertController(title: "NOT ENOUGHT MONEY", message: "You don't have enought money to buy this item.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            
            
        }
        
        self.present(alert, animated: true)
        goldLabel.text = String(hero.money)
    }
    
    
    
}

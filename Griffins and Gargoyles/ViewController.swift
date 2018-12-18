//
//  ViewController.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 14/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import UIKit

var hero: Hero = Hero()

class ViewController: UIViewController {
    
    //Hero 1
    @IBOutlet weak var hero1Name: UILabel!
    @IBOutlet weak var hero1Image: UIImageView!
    @IBOutlet weak var hero1Damage: UILabel!
    @IBOutlet weak var hero1Defense: UILabel!
    @IBOutlet weak var hero1Magic: UILabel!
    @IBOutlet weak var hero1Luck: UILabel!
    
    //Hero 2
    @IBOutlet weak var hero2Name: UILabel!
    @IBOutlet weak var hero2Image: UIImageView!
    @IBOutlet weak var hero2Damage: UILabel!
    @IBOutlet weak var hero2Defense: UILabel!
    @IBOutlet weak var hero2Magic: UILabel!
    @IBOutlet weak var hero2Luck: UILabel!
    
    
    
    //Hero 3
    
    @IBOutlet weak var hero3Name: UILabel!
    @IBOutlet weak var hero3Image: UIImageView!
    @IBOutlet weak var hero3Damage: UILabel!
    @IBOutlet weak var hero3Defense: UILabel!
    @IBOutlet weak var hero3Magic: UILabel!
    @IBOutlet weak var hero3Luck: UILabel!
    
    var heros = [Hero]()
    
    @IBOutlet weak var load: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(heros.count == 0) {
            //HERO 1
            
            //items Hero 1
            
            let head1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "helmet1", part: "head")
            
            let pecho1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "armour1", part: "pecho")
            
            let hand1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "sword2", part: "hand")
            
            let offHand1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "shield1", part: "offHand")
            
            let foot1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "boots1", part: "foot")
            
            let ring1 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "ring2", part: "ring")
            
            //equip hero 1
            let equip1 = Equip()
            
            equip1.addItem(item: head1)
            equip1.addItem(item: pecho1)
            equip1.addItem(item: hand1)
            equip1.addItem(item: offHand1)
            equip1.addItem(item: foot1)
            equip1.addItem(item: ring1)
            
            let hero1 = Hero(name: "Jughead", image: "heroe1", lvl: 1, life: 5, atq: 3, mag: 1, def: 5, lck: 2, equip:  equip1, money: 100)
            
            
            //HERO 2
            
            //items Hero 2
            
            let head2 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "helmet1", part: "head")
            
            let pecho2 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "cap1", part: "pecho")
            
            let hand2 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "arrow1", part: "hand")
            
            let foot2 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "boots1", part: "foot")
            
            let ring2 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "ring1", part: "ring")
            
            //equip hero 2
            let equip2 = Equip()
            
            equip2.addItem(item: head2)
            equip2.addItem(item: pecho2)
            equip2.addItem(item: hand2)
            equip2.addItem(item: foot2)
            equip2.addItem(item: ring2)
            let hero2 = Hero(name: "Archikings", image: "heroe2", lvl: 1, life: 3, atq: 5, mag: 1, def: 4, lck: 1, equip: equip2, money: 100)
            
            
            //HERO 3
            
            //items Hero 3
            
            let head3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "helmet3", part: "head")
            
            let pecho3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "cap1", part: "pecho")
            
            let hand3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "sword3", part: "hand")
            
            let offHand3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "scepter3", part: "offHand")
            
            let foot3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "boots1", part: "foot")
            
            let ring3 = Item(atack: 5, defense: 4, magic: 3, luck: 2, price: 100, minLvl: 1, image: "ring1", part: "ring")
            
            //equip hero 3
            let equip3 = Equip()
            
            equip3.addItem(item: head3)
            equip3.addItem(item: pecho3)
            equip3.addItem(item: hand3)
            equip3.addItem(item: offHand3)
            equip3.addItem(item: foot3)
            equip3.addItem(item: ring3)
            
            let hero3 = Hero(name: "The Doctor", image: "heroe3", lvl: 11, life: 2, atq: 5, mag: 1, def: 4, lck: 1, equip: equip1, money: 100)
            
            
            heros = [hero1, hero2, hero3]
        }
        //Hero 1
        hero1Name.text = heros[0].name
        hero1Image.image = heros[0].image
        hero1Damage.text = String(heros[0].baseAtq)
        hero1Defense.text = String(heros[0].baseDef)
        hero1Magic.text = String(heros[0].baseMag)
        hero1Luck.text = String(heros[0].baseLck)
        
        
        //Hero 2
        hero2Name.text = heros[1].name
        hero2Image.image = heros[1].image
        hero2Damage.text = String(heros[1].baseAtq)
        hero2Defense.text = String(heros[1].baseDef)
        hero2Magic.text = String(heros[1].baseMag)
        hero2Luck.text = String(heros[1].baseLck)
        
        //Hero 3
        hero3Name.text = heros[2].name
        hero3Image.image = heros[2].image
        hero3Damage.text = String(heros[2].baseAtq)
        hero3Defense.text = String(heros[2].baseDef)
        hero3Magic.text = String(heros[2].baseMag)
        hero3Luck.text = String(heros[2].baseLck)
        
        print("load")
        
    }
    
    
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        hero = heros[Int(sender.title(for: .normal)!)!]
        
        let logicVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "menu")
        self.present(logicVc, animated: true, completion: nil)
    }
    
    
}


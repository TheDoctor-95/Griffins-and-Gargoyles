//
//  InventoryControler.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 21/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class InventoryControler: UIViewController {
    
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var pechoImage: UIImageView!
    @IBOutlet weak var footImage: UIImageView!
    @IBOutlet weak var handImage: UIImageView!
    @IBOutlet weak var offHandImage: UIImageView!
    @IBOutlet weak var ringImage: UIImageView!
    
    @IBOutlet weak var damageLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var magicLabel: UILabel!
    @IBOutlet weak var luckLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lvlLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (hero.equip.itemList["head"] != nil) {
            headImage.image = hero.equip.itemList["head"]!.image
        }
        if (hero.equip.itemList["pecho"] != nil) {
            pechoImage.image = hero.equip.itemList["pecho"]!.image
        }
        if (hero.equip.itemList["foot"] != nil) {
            footImage.image = hero.equip.itemList["foot"]!.image
        }
        if (hero.equip.itemList["hand"] != nil) {
            handImage.image = hero.equip.itemList["hand"]!.image
        }
        if (hero.equip.itemList["offHand"] != nil) {
            offHandImage.image = hero.equip.itemList["offHand"]!.image
        }
        if (hero.equip.itemList["ring"] != nil) {
            ringImage.image = hero.equip.itemList["ring"]!.image
        }
        
        damageLabel.text = "\(hero.getAtaque())"
        defenseLabel.text = "\(hero.getDefence())"
        magicLabel.text = "\(hero.getMagia())"
        luckLabel.text = "\(hero.getLuck())"
        nameLabel.text = hero.name
        lvlLabel.text = "Lvl. \(hero.lvl)"
        
    }
    
}

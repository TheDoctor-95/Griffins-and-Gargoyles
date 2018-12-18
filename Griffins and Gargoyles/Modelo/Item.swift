//
//  Item.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 14/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class Item{
    var name: String
    var atack: Int
    var defense: Int
    var magic: Int
    var luck: Int
    var price: Int
    var minLvl: Int
    var image: UIImage
    var part: String
    
    init(atack: Int, defense: Int, magic: Int, luck: Int, price: Int, minLvl: Int, image: String, part: String) {
        self.atack = atack
        self.defense = defense
        self.magic = magic
        self.luck = luck
        self.price = price
        self.minLvl = minLvl
        self.image = UIImage(named: image)!
        self.part = part
        self.name = image
    }

    
}

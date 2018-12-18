//
//  Equip.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 14/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation

class Equip{
    
    
    var itemList: [String:Item]
    
    
    init() {
        self.itemList = [String:Item]()
    }
    
    func addItem(item: Item) {
        self.itemList.updateValue(item, forKey: item.part)
    }
    
    
}

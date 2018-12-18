//
//  MenuControler.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 20/11/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit

class MenuControler: UIViewController {

    
    @IBOutlet weak var load: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        image.image = hero.image
        load.text = "Welcome \(hero.name)"
    }
    
    
    
    
    
}


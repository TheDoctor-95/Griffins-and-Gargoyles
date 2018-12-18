//
//  FightController.swift
//  Griffins and Gargoyles
//
//  Created by Pau Duran on 05/12/2018.
//  Copyright © 2018 Pau Duran. All rights reserved.
//

import Foundation
import UIKit


var battleState: String = ""

class fightController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
        //Monster
    let monster = monsters[monterRow];
    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var pickerViewMonster: UIPickerView!
    var monsterLife = monsters[monterRow].life
    
    @IBOutlet weak var monsterL1: UIImageView!
    @IBOutlet weak var monsterL2: UIImageView!
    @IBOutlet weak var monsterL3: UIImageView!
    @IBOutlet weak var monsterL4: UIImageView!
    @IBOutlet weak var monsterL5: UIImageView!
    
    //Hero
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var pickerViewHero: UIPickerView!
    var heroLife = hero.baseLife
    
    @IBOutlet weak var heroL1: UIImageView!
    @IBOutlet weak var heroL2: UIImageView!
    @IBOutlet weak var heroL3: UIImageView!
    @IBOutlet weak var heroL4: UIImageView!
    @IBOutlet weak var heroL5: UIImageView!
    
    @IBOutlet weak var atc: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monsterImage.image = monster.image
        heroImage.image = hero.image
        
    
        
        pickerViewHero.delegate = self
        pickerViewHero.dataSource = self
        
        if(hero.stat()>99){
            pickerViewHero.selectRow(hero.stat()/100, inComponent:0, animated: true)
            pickerViewHero.selectRow(hero.stat()%100, inComponent:1, animated: true)
            pickerViewHero.selectRow(hero.stat()%10, inComponent: 2, animated: true)
        }else if(hero.stat()>9){
            
            pickerViewHero.selectRow(hero.stat()/10, inComponent: 0, animated: true)
            pickerViewHero.selectRow(hero.stat()%10, inComponent: 1, animated: true)
        }else{
            pickerViewHero.selectRow(hero.stat(), inComponent: 0, animated: true)
        }
        
        
        pickerViewMonster.delegate = self
        pickerViewMonster.dataSource = self
        
        if(monster.atack()>99){
            pickerViewMonster.selectRow(monster.atack()/100, inComponent:0, animated: true)
            pickerViewMonster.selectRow(monster.atack()%100, inComponent:1, animated: true)
            pickerViewMonster.selectRow(monster.atack()%10, inComponent: 2, animated: true)
        }else if(monster.atack()>9){
            
            pickerViewMonster.selectRow(monster.atack()/10, inComponent: 0, animated: true)
            pickerViewMonster.selectRow(monster.atack()%10, inComponent: 1, animated: true)
        }else{
            pickerViewMonster.selectRow(monster.atack(), inComponent: 0, animated: true)
        }
        
        setLifeImages()
        
    }
    
    func setLifeImages(){
        if(heroLife<5){
            heroL5.isHidden = true;
        }
        if(heroLife<4){
            heroL4.isHidden = true;
        }
        if(heroLife<3){
            heroL3.isHidden = true;
        }
        if(heroLife<2){
            heroL2.isHidden = true;
        }
        if(heroLife<1){
            heroL1.isHidden = true;
        }
        
        if(monsterLife<5){
            monsterL5.isHidden = true;
        }
        
        if(monsterLife<4){
            monsterL4.isHidden = true;
        }
        
        if(monsterLife<3){
            monsterL3.isHidden = true;
        }
        
        if(monsterLife<2){
            monsterL2.isHidden = true;
        }
        
        if(monsterLife<1){
            monsterL1.isHidden = true;
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView == pickerViewHero {
            if(hero.stat()>99){
                return 3
            }else if(hero.stat()>9){
                return 2
            }else{
                return 1
            }
        }else {
            if(monster.atack()>99){
                return 3
            }else if(monster.atack()>9){
                return 2
            }else{
                return 1
            }
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10;
       
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
       
        
        let item: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        
        
        let image = UIImageView(frame: CGRect(x: 5, y: 5, width: 90, height: 90))
        
        var imageName = "dice\(row)"
        
        if(pickerView == pickerViewMonster){
            imageName += "U"
        }
        
        image.image = UIImage(named: imageName)
        
        
        item.addSubview(image)
        return item;
    }
    
    
    
    @IBAction func attack(_ sender: Any) {
        
        //HERO NUMBER
        let randHero = Int.random(in: 1...hero.stat())
        
        
        if(hero.stat()>99){
            pickerViewHero.selectRow(randHero/100, inComponent:0, animated: true)
            pickerViewHero.selectRow(randHero%100, inComponent:1, animated: true)
            pickerViewHero.selectRow(randHero%10, inComponent: 2, animated: true)
        }else if(hero.stat()>9){
            
            pickerViewHero.selectRow(randHero/10, inComponent: 0, animated: true)
            pickerViewHero.selectRow(randHero%10, inComponent: 1, animated: true)
        }else{
            pickerViewHero.selectRow(randHero, inComponent: 0, animated: true)
        }
        
        //MONSTER NUMBER
        
        let randMonster = Int.random(in: 1...monster.atack())
        
        print(randMonster)
        
        if(monster.atack()>99){
            pickerViewMonster.selectRow(randMonster/100, inComponent:0, animated: true)
            pickerViewMonster.selectRow(randMonster%100, inComponent:1, animated: true)
            pickerViewMonster.selectRow(randMonster%10, inComponent: 2, animated: true)
        }else if(monster.atack()>9){
            
            pickerViewMonster.selectRow(randMonster/10, inComponent: 0, animated: true)
            pickerViewMonster.selectRow(randMonster%10, inComponent: 1, animated: true)
        }else{
            pickerViewMonster.selectRow(randMonster, inComponent: 0, animated: true)
        }
        
        if(randHero>=randMonster){
            print("hero Wins Hit")
            monsterLife -= 1
        }else{
            print("monster Wins Hit")
            heroLife -= 1
        }
        setLifeImages()
        
        if(heroLife == 0 || monsterLife == 0){
            print("End Battle")
            
            atc.isHidden = true;
            if(heroLife == 0){
                battleState = "lose"
            }else{
                battleState = "win"
            }
            
            let logicVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "victoryScreen")
            self.present(logicVc, animated: true, completion: nil)
            
        }
        
        
        
        
        
        
    }
    
    
}

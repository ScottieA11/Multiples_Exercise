//
//  ViewController.swift
//  Tapper.Game
//
//  Created by Raymond Ayala on 6/29/16.
//  Copyright © 2016 Raymond Ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//Variables 
    
    var maxAdd = 0
    var currentAddt = 0
    
// Outlets
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var multiTxt: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    
    @IBAction func onAddPressed(sender: UIButton!){
        currentAddt += 1
        
    }
    
    
    @IBAction func addBtnPressed(sender: AnyObject) {

       if inputTxt.text != nil && inputTxt.text != ""{
        
            Logo.hidden = true
            inputTxt.hidden = true
            playBtn.hidden = true
        
            multiTxt.hidden = false
            addBtn.hidden = false
        
            maxAdd = Int(inputTxt.text!)!
        
        
        
        
        }
        
    }
    
    
    func restartAddingGame(){
        
        
    }

    func checkGameStatus(){
        
    }
    
}


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
    var totalAdd = 0
    
// Outlets
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var multiTxt: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    @IBAction func onAddPressed(sender: UIButton!){
        currentAddt += maxAdd
        updateAdd()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func playBtnPressed(sender: AnyObject) {

       if inputTxt.text != nil && inputTxt.text != ""{
        
            Logo.hidden = true
            inputTxt.hidden = true
            playBtn.hidden = true
        
            multiTxt.hidden = false
            addBtn.hidden = false
        
            maxAdd = Int(inputTxt.text!)!
            currentAddt = 0
        }
    }
    
   func updateAdd() {
        totalAdd = currentAddt + maxAdd
        multiTxt.text = "\(currentAddt) + \(maxAdd) = \(totalAdd)"
    }
    
    func restartGame (){
        Logo.hidden = false
        inputTxt.hidden = false
        playBtn.hidden = false
        
        multiTxt.hidden = true
        addBtn.hidden = true
        
        maxAdd = 0
    }
    
    func isGameOver() -> Bool {
        if totalAdd >= (maxAdd * 5) {
            return true
        } else {
            return false
        }
    }
}


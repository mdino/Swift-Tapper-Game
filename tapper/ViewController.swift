//
//  ViewController.swift
//  tapper
//
//  Created by Dino Musliu on 25/06/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Properties
    
    var maxTaps : Int = 0
    var currentTaps : Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg : UIImageView!
    @IBOutlet weak var howManyTapsTxt : UITextField!
    @IBOutlet weak var playBtn : UIButton!
    
    @IBOutlet weak var tapBtn : UIButton!
    @IBOutlet weak var tapsLbl : UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton){
        
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
         }
    }
    
    @IBAction func OnCoinTap(sender: AnyObject) {
        
            currentTaps += 1
            updateTapsLabel()
        
        if isGameOver() {
           resetGames()
        }
        
        
    }
    
    func updateTapsLabel(){
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    
    func isGameOver() -> Bool {
        if(currentTaps >= maxTaps){
            return true
        }
        else{
            return false
        }
    }
    
    func resetGames(){
        maxTaps = 0
        howManyTapsTxt.text = nil
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    

}

 
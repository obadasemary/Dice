//
//  RollViewController.swift
//  Dice
//
//  Created by Abdelrahman Mohamed on 12/9/15.
//  Copyright © 2015 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    
    /**
     * Randomly generates a Int from 1 to 6
     */
    func randomDiceValue() -> Int {

        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6

        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    @IBAction func rollTheDice(sender: UIButton) {
        var controller: DiceViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
        
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
}

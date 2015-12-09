//
//  DiceViewController.swift
//  Dice
//
//  Created by Abdelrahman Mohamed on 12/9/15.
//  Copyright © 2015 Abdelrahman Mohamed. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secoundDice: UIImageView!
    var firstValue: Int?
    var secondValue: Int?
    
    override func viewWillAppear(animated: Bool) {
        
        if let firstValue = self.firstValue {
            self.firstDice.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDice.image = nil
        }
        
        if let secondValue = self.secondValue {
            self.secoundDice.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secoundDice.image = nil
        }
        
        self.firstDice.alpha = 0
        self.secoundDice.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.firstDice.alpha = 1
            self.secoundDice.alpha = 1
        }
    }
    
    /**
     * accepts a conditional Int, and returns an dice image, or nil
     */
    func imageForValue(value: Int?) -> UIImage?{
        return nil
    }
    
    /**
     *    dismiss this view controller
     */
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

}

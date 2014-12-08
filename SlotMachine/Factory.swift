//
//  Factory.swift
//  SlotMachine
//
//  Created by Yosemite on 12/7/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import Foundation
import UIKit

class Factory {
    // Class function is used when it is no necessary for instance
    class func creatSlots() -> [[Slot]] {
        let kNumberOfSlots = 3
        let kNumberOfContainers = 3
        
        var slots:[[Slot]] = []
        for var containerNumber=0; containerNumber < kNumberOfContainers; ++containerNumber {
            var slotArray:[Slot] = []
            
            for var slotNumber=0; slotNumber < kNumberOfSlots; ++slotNumber {
                // Create an empty for placeholder
                //var slot = Slot(value: 0, image: UIImage(named: "")!, isRed: true)
                var slot = Factory.createSlot(slotArray)
                slotArray.append(slot)
            }
         
            slots.append(slotArray)
        }
        
        return slots
    }
    
    // Generate a slot without duping previous slots
    class func createSlot(currentCards:[Slot]) -> Slot {
        var currentCardValues:[Int] = []
        for slot in currentCards {
            currentCardValues.append(slot.value)
        }
        
        var randomNumber = Int(arc4random_uniform(UInt32(13)))
        
        // While currentCardValues "contains" randomNumber, keep running the loop
        // - Useful to go through the array
        while contains(currentCardValues, randomNumber) {
            randomNumber = Int(arc4random_uniform(UInt32(13)))
        }
        
        var slot:Slot
        
        switch randomNumber {
        case 0:
            slot = Slot(value: 1, image: UIImage(named: "Ace")!, isRed: true)
        case 1:
            slot = Slot(value: 2, image: UIImage(named: "Two")!, isRed: true)
        case 2:
            slot = Slot(value: 3, image: UIImage(named: "Three")!, isRed: true)
        case 3:
            slot = Slot(value: 4, image: UIImage(named: "Four")!, isRed: true)
        case 4:
            slot = Slot(value: 5, image: UIImage(named: "Five")!, isRed: false)
        case 5:
            slot = Slot(value: 6, image: UIImage(named: "Six")!, isRed: false)
        case 6:
            slot = Slot(value: 7, image: UIImage(named: "Seven")!, isRed: true)
        case 7:
            slot = Slot(value: 8, image: UIImage(named: "Eight")!, isRed: false)
        case 8:
            slot = Slot(value: 9, image: UIImage(named: "Nine")!, isRed: false)
        case 9:
            slot = Slot(value: 10, image: UIImage(named: "Ten")!, isRed: true)
        case 10:
            slot = Slot(value: 11, image: UIImage(named: "Jack")!, isRed: false)
        case 11:
            slot = Slot(value: 12, image: UIImage(named: "Queen")!, isRed: false)
        case 12:
            slot = Slot(value: 13, image: UIImage(named: "King")!, isRed: true)
        default:
            slot = Slot(value: 0, image: UIImage(named: "Ace")!, isRed: true)
        }
        
        return slot
    }
    
}

# SlotMachine
Class function
--------------
**useful in the case where no instance is needed to be generated**

    // Class function is used when it is no necessary for instance
    class func creatSlots() -> [[Slot]] {
        let kNumberOfSlots = 3
        let kNumberOfContainers = 3
        
        var slots:[[Slot]] = []
        for var containerNumber=0; containerNumber < kNumberOfContainers; ++containerNumber {
            var slotArray:[Slot] = []
            
            for var slotNumber=0; slotNumber < kNumberOfSlots; ++slotNumber {
                var slot = Slot(value: 0, image: UIImage(named: "")!, isRed: true)
                slotArray.append(slot)
            }
         
            slots.append(slotArray)
        }
        
        return slots
    }

Alert dialog/message
--------------------
**calling *UIAlertController* and *UIAlertAction*.**

    func showAlertWithText(header:String = "Warning", message:String) {
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        // Display alert on the screen
        self.presentViewController(alert, animated: true, completion: nil)
    }

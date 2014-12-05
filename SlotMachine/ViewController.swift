//
//  ViewController.swift
//  SlotMachine
//
//  Created by Yosemite on 12/4/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Containers
    
    // Manually add containers since they are not connected to storyboard
    var firstContainer:UIView!
    var secondContainer:UIView!
    var thirdContainer:UIView!
    var fourthContainer:UIView!
    
    // Constants - k for constants
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupContainerViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerViews() {
        self.firstContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, self.view.bounds.origin.y, self.view.bounds.width - 2 * kMarginForView, self.view.bounds.height * kSixth))
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
    }


}


//
//  ViewController.swift
//  SamplePushBehaviour
//
//  Created by Sunil Targe on 2019/2/19.
//  Copyright © 2019 Sunil Targe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblText: UILabel!
    var animator: UIDynamicAnimator!
    var push: UIPushBehavior!
    
    var behaviour: UIDynamicItemBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.sizeToFit()
        
        
        animator = UIDynamicAnimator(referenceView: view)
        push = UIPushBehavior(items: [lblText], mode: .instantaneous)
        push.setAngle(-.pi/2, magnitude: 20)
        animator.addBehavior(push)
        
        behaviour = UIDynamicItemBehavior.init(items: [lblText])
        behaviour.friction = 0
        behaviour.resistance = 0
        animator.addBehavior(behaviour)
        
    }
}


//
//  ViewController.swift
//  navigationsnippet
//
//  Created by serc student on 5/7/18.
//  Copyright © 2018 ramyakeerthana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 7
        // Do any additional setup after loading the view, typically from a nib.
    }

 
    @IBAction func openMenu(sender: AnyObject) {
        if (menuShowing) {
         leadingConstraint.constant = -160
        } else{
            leadingConstraint.constant = -20
            UIView.animateWithDuration(0.3, animations: {
            self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
    }

}


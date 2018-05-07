//
//  ViewController.swift
//  DropDown
//
//  Created by serc student on 5/7/18.
//  Copyright © 2018 ramyakeerthana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSelection(sender: UIButton) {
        cityButtons.forEach{ (button) in
            UIView.animateWithDuration(0.3, animations: {
                button.hidden = !button.hidden
            })
        
    }
    }
        @IBAction func cityTapped(sender: UIButton) {
    }


}


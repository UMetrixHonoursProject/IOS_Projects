//
//  ViewController.swift
//  Login
//
//  Created by serc student on 2/4/18.
//  Copyright © 2018 ramyakeerthana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwd: UITextField!
    
    
    @IBAction func greeno(sender: AnyObject) {
        passwd.secureTextEntry=false
    }

    @IBAction func greeonin(sender: AnyObject) {
        passwd.secureTextEntry=true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


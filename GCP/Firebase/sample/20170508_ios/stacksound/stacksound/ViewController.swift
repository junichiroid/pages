//
//  ViewController.swift
//  stacksound
//
//  Created by A12653 on 2017/05/08.
//  Copyright © 2017年 A12653. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toSignUp", sender: self)
    }
   
    @IBAction func loginButton(_ sender: Any) {
    }
}


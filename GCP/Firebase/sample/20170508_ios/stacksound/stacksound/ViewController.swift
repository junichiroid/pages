//
//  ViewController.swift
//  stacksound
//
//  Created by A12653 on 2017/05/08.
//  Copyright © 2017年 A12653. All rights reserved.
//

import UIKit
import Firebase

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //ログインしていれば、遷移
        //FIRAuthがユーザー認証のためのフレーム
        //checkUserVerifyでチェックして、ログイン済みなら画面遷移
        print("ログインしていますか？")
        if self.checkUserVerify() {
            self.transitionToView()
        }
    }
    
    func transitionToView() {
        print("トランジショー")
       self.performSegue(withIdentifier: "toView", sender: self)
    }
    
    // ログイン済みかどうかと、メールのバリデーションが完了しているか確認
    func checkUserVerify()  -> Bool {
        let user = FIRAuth.auth()?.currentUser
        print("ユーザー↓")
        print(user)
        return true
//        return user.isEmailVerified
    }
}


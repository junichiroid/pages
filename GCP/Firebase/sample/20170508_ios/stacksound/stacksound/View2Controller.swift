//
//  View2Controller.swift
//  stacksound
//
//  Created by A12653 on 2017/05/09.
//  Copyright © 2017年 A12653. All rights reserved.
//

import UIKit
import Firebase

class View2Controller: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkUserVerify()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

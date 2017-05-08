//
//  SingInController.swift
//  stacksound
//
//  Created by A12653 on 2017/05/08.
//  Copyright © 2017年 A12653. All rights reserved.
//

import UIKit
import Firebase //Firebaseをインポート

class SingInController: UIViewController ,UITextFieldDelegate {
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toBack", sender: self)
    }
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailTextField.delegate = self
        passwordTextFiled.delegate = self
        passwordTextFiled.isSecureTextEntry = true // 文字を非表示に
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func singUpButton(_ sender: Any) {
        signup()
    }
    
    //Signupのためのメソッド
    func signup() {
        //emailTextFieldとpasswordTextFieldに文字がなければ、その後の処理をしない
        guard let email = emailTextField.text else  { return }
        guard let password = passwordTextFiled.text else { return }
        //FIRAuth.auth()?.createUserWithEmailでサインアップ
        //第一引数にEmail、第二引数にパスワード
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            //エラーなしなら、認証完了
            if error == nil {
                // エラーがない場合にはそのままログイン画面に飛び、ログインしてもらう
                self.transitionToLogin()
            } else {
                print("\(error?.localizedDescription)")
            }
        })
    }

    //Returnキーを押すと、キーボードを隠す
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func transitionToLogin() {
        
    }
    

}


//
//  LoginController.swift
//  stacksound
//
//  Created by A12653 on 2017/05/08.
//  Copyright © 2017年 A12653. All rights reserved.
//

import UIKit
import Firebase

class LoginController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emailTextField.delegate = self //デリゲートをセット
        passwordTextField.delegate = self //デリゲートをセット
        passwordTextField.isSecureTextEntry  = true // 文字を非表示に
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        login()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "loginToTop", sender: self)
    }
    
    //Returnキーを押すと、キーボードを隠す
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //ログインのためのメソッド
    func login() {
        //EmailとPasswordのTextFieldに文字がなければ、その後の処理をしない
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        //signInWithEmailでログイン
        //第一引数にEmail、第二引数にパスワードを取ります
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            //エラーがないことを確認
            if error == nil {
                if let loginUser = user {
                    print(user?.email)
                    
                    // バリデーションチェック
                    if self.checkUserValidate(user: loginUser) {
                        // 完了済みなら、ListViewControllerに遷移
                        self.transitionToView()
                    } else {
                        
                        // 完了していない場合は、アラートを表示
                        self.presentValidateAlert()
                    }
                }
            } else {
                print("error...\(error?.localizedDescription)")
            }
        })
    }
    
    // ログインした際に、バリデーションが完了しているか返す
    func checkUserValidate(user: FIRUser)  -> Bool {
        return user.isEmailVerified
    }
    
    // メールのバリデーションが完了していない場合のアラートを表示
    func presentValidateAlert() {
        let alert = UIAlertController(title: "メール認証", message: "メール認証を行ってください", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //ログイン完了後に、ListViewControllerへの遷移のためのメソッド
    func transitionToView()  {
        self.performSegue(withIdentifier: "toVC", sender: self)
    }
}


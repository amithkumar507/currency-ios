//
//  initialViewController.swift
//  currency
//
//  Created by Amith Kumar Aellanki on 11/18/17.
//  Copyright © 2017 Amith Kumar Aellanki. All rights reserved.
//

import UIKit

class initialViewController: UIViewController {
    
    var dict1 : [String:String] = ["username":"test","password":"1234"]

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        password.isSecureTextEntry = true
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func validate(_ sender: Any) {
        
        let username = self.username.text
        
        let password = self.password.text
        
        
        
        if username! == dict1["username"] && password! == dict1["password"] {
            
            
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "console") as! UINavigationController
            self.present(nextViewController, animated:true, completion:nil)
            
            
            
        }
            
        else {
            
            let alert = UIAlertController(title: "Alert", message: "Username or password not valid", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
    
    
    @IBAction func signup(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "signup") as! signupViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
    }
    


}

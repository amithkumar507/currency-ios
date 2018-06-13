//
//  menuViewController.swift
//  currency
//
//  Created by Amith Kumar Aellanki on 11/19/17.
//  Copyright © 2017 Amith Kumar Aellanki. All rights reserved.
//

import UIKit

class menuViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func qrcode(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "qrboard") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
        
    }
   

}

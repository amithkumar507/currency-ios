//
//  CurrencyViewController.swift
//  currency
//
//  Created by Amith Kumar Aellanki on 11/22/17.
//  Copyright © 2017 Amith Kumar Aellanki. All rights reserved.
//

import UIKit

class CurrencyViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func homesegue(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
        self.present(nextViewController, animated:true, completion:nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

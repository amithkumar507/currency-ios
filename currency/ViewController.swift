//
//  ViewController.swift
//  currency
//
//  Created by Amith Kumar Aellanki on 11/18/17.
//  Copyright © 2017 Amith Kumar Aellanki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var qrcodeImage: CIImage!
    
    var  Simage: UIImage!

    @IBOutlet weak var inputfield: UITextField!
    
    @IBOutlet weak var imagelable: UIImageView!
    
    @IBOutlet weak var generatebutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func generate(_ sender: Any) {
        
        if qrcodeImage == nil {
            
           
            
            print("checkpoint2")
            let data  = self.inputfield.text!.data(using: String.Encoding.isoLatin1, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter!.setValue(data, forKey: "inputMessage")
            filter!.setValue("Q", forKey: "inputCorrectionLevel")
            qrcodeImage = filter!.outputImage
            
            
            // imageQrcode.image = UIImage(ciImage: qrcodeImage)
            inputfield.resignFirstResponder()
            
            displayQRCodeImage()
            
        }

    }
    
    func displayQRCodeImage() {
        let scaleX = imagelable.frame.size.width / qrcodeImage.extent.size.width
        let scaleY = imagelable.frame.size.height / qrcodeImage.extent.size.height
        
        let transformedImage = qrcodeImage.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY))
        imagelable.image = UIImage(ciImage: transformedImage)
        
        Simage = imagelable.image
        
    }

}


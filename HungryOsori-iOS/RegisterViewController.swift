//
//  RegisterViewController.swift
//  HungryOsori-iOS
//
//  Created by Macbook Pro retina on 2016. 7. 21..
//  Copyright © 2016년 HanyangOsori. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var NewIdUITextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAlertMassage(Massge : String)
    {
        var alert = UIAlertController(title: "Alert", message: Massge, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(okAction)
        
        self.presentedViewController
    }
    
    @IBAction func RegisterUIButton(sender: AnyObject) {
        let NewIdUIText = NewIdUITextField.text
        
        if((NewIdUIText?.isEmpty) != nil)
        {
            displayAlertMassage("Put your ID that you want to use")
            return
        }
        
        NSUserDefaults.standardUserDefaults().setObject(NewIdUIText, forKey: "NewId")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        var alert = UIAlertController(title: "alert", message: "Register Successful", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default){
            ACTION in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        

        alert.addAction(okAction)
        self.presentedViewController

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

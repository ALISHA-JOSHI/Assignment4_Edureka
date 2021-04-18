//
//  ViewController.swift
//  Assignment 4
//
//  Created by ALISHA JOSHI K on 30/12/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var enterUserName: UITextField!
    @IBOutlet weak var enterPassword: UITextField!
    
    var usrName : String?
    var pwd : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "navToVC") {
                if let destinationVC = segue.destination as? SecondViewController {
                    destinationVC.userName = self.usrName ?? ""
                    destinationVC.password = self.pwd ?? ""
                }
            }
        }

    @IBAction func login(_ sender: Any) {
        
        self.usrName = enterUserName.text
        self.pwd = enterPassword.text
        
        performSegue(withIdentifier: "navToVC", sender: self)

    }
    
    @IBAction func reset(_ sender: Any) {
        self.enterPassword.text = nil
        self.enterUserName.text = nil
    }
 
}


//
//  SecondViewController.swift
//  Assignment 4
//
//  Created by ALISHA JOSHI K on 31/12/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    var userName : String?
    var password : String?
    
    @IBOutlet weak var usernameLabel:UILabel?
    @IBOutlet weak var passwordLabel:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usernameLabel?.text = "User Name is :\( userName ?? "")"
        self.passwordLabel?.text = "Password is :\( password ?? "")"

        // Do any additional setup after loading the view.
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         
//    }
    

}

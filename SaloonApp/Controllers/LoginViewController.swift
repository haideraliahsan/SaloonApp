//
//  File.swift
//  SaloonApp
//
//  Created by haider ali on 12/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToSignUp", sender: self)
        
    }
    
}

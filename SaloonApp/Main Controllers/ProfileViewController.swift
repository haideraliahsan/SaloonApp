//
//  ProfileViewController.swift
//  SaloonApp
//
//  Created by haider ali on 07/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.2021052837, green: 0.04999809712, blue: 0.211381495, alpha: 1)
       

        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func editProfileBtnPressed(_ sender: Any) {
        
        
        self.performSegue(withIdentifier: "goToEditScreen", sender: self)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

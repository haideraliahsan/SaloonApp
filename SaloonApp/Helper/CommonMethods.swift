//
//  CommonMethods.swift
//  SaloonApp
//
//  Created by haider ali on 07/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation


class CircularPurpleImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowRadius = 5;
               self.layer.shadowOpacity = 0.5;
               self.layer.cornerRadius = self.frame.height / 2
               self.layer.borderWidth = 5
               self.layer.borderColor = #colorLiteral(red: 0.2021052837, green: 0.04999809712, blue: 0.211381495, alpha: 1)
               self.layer.masksToBounds = true;
               
        
    }
    
    
    
}
func getDateTime() {
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
}

class CircularImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowRadius = 5;
               self.layer.shadowOpacity = 0.5;
               self.layer.cornerRadius = self.frame.height / 2
               self.layer.borderWidth = 2
               self.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
               self.layer.masksToBounds = true;
               
        
    }
    
    
    
}
class RoundcornerButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
            self.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
            self.layer.shadowRadius = 5;
            self.layer.shadowOpacity = 0.5;
            self.layer.cornerRadius = self.frame.height / 4
            self.layer.borderWidth = 1
            self.layer.masksToBounds = true;
        
        
        
    }
    
}

extension UINavigationController {
    func setTitleForgroundTitleColor(_ color: UIColor) {
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue): color]
    }

    func setLargeTitleColor(_ color: UIColor) {
        self.navigationBar.largeTitleTextAttributes = [NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue): color]
    }

    func setAllTitleColor(_ color: UIColor) {
        setTitleForgroundTitleColor(color)
        setLargeTitleColor(color)
    }
}

//
//  methods.swift
//  Smack
//
//  Created by haider ali on 11/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation




func circularView (textField: UIView) {
    
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.clear.cgColor
    
    
    textField.layer.cornerRadius = textField.frame.size.height/2
    textField.clipsToBounds = true
    
}

func roundView (view: UIView) {
    
    view.layer.borderWidth = 1
    view.layer.borderColor = UIColor.clear.cgColor
    
    
    view.layer.cornerRadius = view.frame.size.height/5
    view.clipsToBounds = true
}

func roundImageView (textField: UIImageView) {
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.clear.cgColor
    
    
    textField.layer.cornerRadius = textField.frame.size.height/6
    textField.clipsToBounds = true
}


func circularImageView (textField: UIImageView) {
    textField.layer.borderWidth = 1
    textField.layer.borderColor = UIColor.clear.cgColor
    textField.layer.cornerRadius = textField.frame.size.height/2
    textField.clipsToBounds = true
}

extension UIView{
    func addConstrintWithFormat (format: String, views: UIView...)
    {
        var viewDictionary = [String: UIView]()
        for (index, view) in views.enumerated(){
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewDictionary[key] = view
        }
        
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewDictionary))
        
    }
}



@IBDesignable
class Button: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        buttonView ()
    }
    
    
    func buttonView () {
        self.layer.cornerRadius = self.frame.height/2.0
        self.clipsToBounds = true
        self.backgroundColor = UIColor.clear
        self.tintColor = UIColor.white
        
        
    }
    
}



class RoundTextField: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.borderColor = tintColor.cgColor
        layer.cornerRadius = frame.size.height/2
        clipsToBounds = true
        
    }
}
class RoundCornerButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = frame.size.height/4
        clipsToBounds = true
        
    }
}

class RoundCornerView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = frame.size.height/6
        clipsToBounds = true
        
    }
}
class RoundShadowView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = frame.size.height/6
        clipsToBounds = true
         layer.shadowColor = UIColor.darkGray.cgColor
                          layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
               layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
               layer.shadowOpacity = 0.5
                          layer.shadowRadius = 5
                          layer.masksToBounds = true
                          clipsToBounds = false
        
    }
}
class RoundButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = frame.size.height/2
        clipsToBounds = true
       
    }
}
class ShadowButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//     self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
                   layer.shadowColor = UIColor.darkGray.cgColor
                   layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        layer.shadowOpacity = 0.5
                   layer.shadowRadius = 5
                   layer.masksToBounds = true
                   clipsToBounds = false
//        layer.cornerRadius = 4.0
       
    }
}




class RoundView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.clear.cgColor
        layer.cornerRadius = frame.size.height/2
        clipsToBounds = true
        
    }
}
extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}



extension UIImage {
    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in:UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
}
func  notEmpty(textField: UITextField) ->Bool {
    if let text = textField.text {
        if text.isEmpty {
            return false
        }
        else{
            return true
        }
    }else{
        return false
    }
    
    
    
}
func isValidEmail(testStr:String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: testStr)
}

func isValidPassword(testStr:String?) -> Bool {
    guard testStr != nil else { return false }
    
   
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
    return passwordTest.evaluate(with: testStr)
    
    
}

    
    

func confirmPassword (confirmPassword: UITextField,this: UITextField) ->Bool {
    if confirmPassword.text == this.text {
        return true
    }else {
        return false
        //call view to show alert message
    }
}

func emailValidation(textField: UITextField) ->Bool {
    if let email = textField.text {
        if(isValidEmail(testStr: email)) {
            return true
        }else{
            return false
            //call view to show alert message
        }
    }else{
        return false
    }
    
}
func passwordValidation(textField: UITextField) ->Bool {
    if isValidPassword(testStr: textField.text) {
        return true
    }
    else {
        return false
        //call view to show alert message
    }
}

class Toast {
    static func show(message: String, controller: UIViewController) {
        let toastContainer = UIView(frame: CGRect())
        toastContainer.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastContainer.alpha = 0.0
        toastContainer.layer.cornerRadius = 25;
        toastContainer.clipsToBounds  =  true
        
        let toastLabel = UILabel(frame: CGRect())
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font.withSize(12.0)
        toastLabel.text = message
        toastLabel.clipsToBounds  =  true
        toastLabel.numberOfLines = 0
        
        toastContainer.addSubview(toastLabel)
        controller.view.addSubview(toastContainer)
        
        toastLabel.translatesAutoresizingMaskIntoConstraints = false
        toastContainer.translatesAutoresizingMaskIntoConstraints = false
        
        let a1 = NSLayoutConstraint(item: toastLabel, attribute: .leading, relatedBy: .equal, toItem: toastContainer, attribute: .leading, multiplier: 1, constant: 15)
        let a2 = NSLayoutConstraint(item: toastLabel, attribute: .trailing, relatedBy: .equal, toItem: toastContainer, attribute: .trailing, multiplier: 1, constant: -15)
        let a3 = NSLayoutConstraint(item: toastLabel, attribute: .bottom, relatedBy: .equal, toItem: toastContainer, attribute: .bottom, multiplier: 1, constant: -15)
        let a4 = NSLayoutConstraint(item: toastLabel, attribute: .top, relatedBy: .equal, toItem: toastContainer, attribute: .top, multiplier: 1, constant: 15)
        toastContainer.addConstraints([a1, a2, a3, a4])
        
        let c1 = NSLayoutConstraint(item: toastContainer, attribute: .leading, relatedBy: .equal, toItem: controller.view, attribute: .leading, multiplier: 1, constant: 65)
        let c2 = NSLayoutConstraint(item: toastContainer, attribute: .trailing, relatedBy: .equal, toItem: controller.view, attribute: .trailing, multiplier: 1, constant: -65)
        let c3 = NSLayoutConstraint(item: toastContainer, attribute: .bottom, relatedBy: .equal, toItem: controller.view, attribute: .bottom, multiplier: 1, constant: -75)
        controller.view.addConstraints([c1, c2, c3])
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
            toastContainer.alpha = 1.0
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, delay: 1.5, options: .curveEaseOut, animations: {
                toastContainer.alpha = 0.0
            }, completion: {_ in
                toastContainer.removeFromSuperview()
            })
        })
    }
}









        func addTargetToButton (button: UIButton, this: UIViewController) {
            button.addTarget(this.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
            this.view.addGestureRecognizer((this.revealViewController()?.panGestureRecognizer())!)
            this.view.addGestureRecognizer((this.revealViewController()?.tapGestureRecognizer())!)
}





extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}



class CheckBox: UIButton {
    // Images
    let checkedImage = UIImage(named: "ic_check_box")! as UIImage
    let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage

    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: UIControl.State.normal)
            } else {
                self.setImage(uncheckedImage, for: UIControlState.normal)
            }
        }
    }

    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }

    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}

//extension UIColor {
//    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
//        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
//    }
//}
extension UIView {
    func anchor (top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}




//
//func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//    setButton()
//    return true
//}
//func setButton() {
//    let inputValid = checkInput()
//    if inputValid {
//        newButton.enabled = true
//    } else {
//        newButton.enabled = false
//    }
//}
//
//func checkInput() -> Bool {
//
//    let name1Value = name1.text
//    let name2Value = name2.text
//    let name3Value = name3.text
//    let name4Value = name4.text
//
//    if !name1Value.isEmpty && !name2Value.isEmpty && !name3Value.isEmpty && !name4Value.isEmpty {
//
//        return true
//
//    }





//func put (this: UIView, onThis: UITextField) {
//    onThis.leftView = this
//    onThis.leftView = this
//    onThis.leftViewMode = UITextField.ViewMode.always
//}
//func putImageOnTextField (image: UIImage, textField: UITextField) {
//    var imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//    imageView.contentMode = .scaleAspectFill
//    imageView.image = image
//    textField.leftView = imageView
//    textField.leftViewMode = UITextField.ViewMode.always
//
//}
//
//func example (image: UIImage, textField: UITextField) {
//    var imageView = UIImageView(frame: CGRect(x: 12, y: 0, width: 30, height: 30))
//    imageView.contentMode = .scaleAspectFill
//    imageView.image = image
//    textField.addSubview(imageView)
//
//
//}







func createAlertController () {
    
    
    let alertController = UIAlertController(title: "Add New Name", message: "", preferredStyle: .alert)
    alertController.addTextField { (textField : UITextField!) -> Void in
        textField.placeholder = "Enter Second Name"
    }
    let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
        let firstTextField = alertController.textFields![0] as UITextField
        let secondTextField = alertController.textFields![1] as UITextField
        print("firstName \(firstTextField.text), secondName \(secondTextField.text)")
    })
    let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
    alertController.addTextField { (textField : UITextField!) -> Void in
        textField.placeholder = "Enter First Name"
    }
    
    alertController.addAction(saveAction)
    alertController.addAction(cancelAction)
    
//    self.present(alertController, animated: true, completion: nil)
    
    
    
    
    
}


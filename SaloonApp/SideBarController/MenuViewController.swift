//
//  MenuViewController.swift
//  SaloonApp
//
//  Created by haider ali on 07/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SideBarCell
        cell.menuTitle?.text = options[indexPath.section][indexPath.row]
        cell.menuImageView.image = UIImage(named: "user")
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return options.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
        
    }
      func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        let separatorView = UIView(frame: CGRect(x: tableView.separatorInset.left - 20, y: footerView.frame.height, width: tableView.frame.width , height: 1))
        separatorView.backgroundColor = UIColor.separator
        if section == 1 {
           
            return footerView
        }
        else {
            footerView.addSubview(separatorView)

            return footerView
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let footerView = UIView()
        var label : UILabel = {
           var lbl = UILabel()
            lbl.textColor = UIColor.gray
            lbl.text = "Communicate"
            return lbl
        }()
        
        if section == 0 {
           
            return footerView
        }
        else {
            footerView.addSubview(label)
            label.anchor(top: footerView.topAnchor, left: footerView.leftAnchor, bottom: footerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 10, paddingRight: 30, width: 0, height: 0)

            return footerView
        }
    }
    
    
    
 
    
    
    
    let options = [["News Feed", "Shopping", "Services", "Testimonials", "Gallery"],["About Us", "Contact Us", "LogOut"]]

    let cellId = "menuCell"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.separatorStyle = .none
        
        
        

        // Do any additional setup after loading the view.
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

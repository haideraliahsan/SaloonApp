//
//  ColouringsViewController.swift
//  SaloonApp
//
//  Created by haider ali on 10/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit


class ColouringsService: UITableViewCell {
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
}

class ColouringsBookings: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func bookingsPressed(_ sender: Any) {
        
        
    }
    
}

class ColouringsPickTime: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func timePickPressed(_ sender: Any) {
    }
    
}

class ColouringsCategory: UITableViewCell {

    @IBOutlet weak var categoryView: RoundShadowView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


class ColouringsCheckBox: UITableViewCell {

    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var btnCheckBox: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btnCheckBox.setImage(UIImage(named: "unSelected"), for: .normal)

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func checkBox(_ sender: UIButton) {
        if btnCheckBox.imageView?.image == UIImage(named: "unSelected") {
            btnCheckBox.setImage(UIImage(named: "selected"), for: .normal)
        }
        else {
            btnCheckBox.setImage(UIImage(named: "unSelected"), for: .normal)
        }
        

        
    }
    
}


class ColouringCategories {
    var title: String?
    var price: Int?
    var hours: Int?
    var min: Int?
    
    init(title: String, price: Int, hours: Int, min:Int) {
        self.title = title
        self.price = price
        self.hours = hours
        self.min = min
    }
}
class ColouringCheckBoxCategories {
    var title: String?
    var price: Int?
    var min: Int?
    
    init(title: String, price: Int, min:Int) {
        self.title = title
        self.price = price
        self.min = min
    }
}

class StructOperation {
     struct glovalVariable {
        static var checkCategories: [ColouringCheckBoxCategories]!
        static var categories: [ColouringCategories]!
        
    }
}


class ColouringsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let categoryCell = "categoryCell"
    
    let bookingCell = "bookingCell"
    
    let checkBox = "checkBox"
    
    let pickTime = "pickTime"
    
    let selectService = "selectService"
    
//    let categories = ["Full Head Color", "Half Head Color", "Highlights Full Head", "Highlights Half Head"]
    
    var categories: [ColouringCategories]!
    var checkCategories: [ColouringCheckBoxCategories]!

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (categories.count + checkCategories.count + 3)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.white
        
        
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: selectService, for: indexPath) as! ColouringsService
            cell.selectedBackgroundView = backgroundView
            return cell
        }
            
        else if (indexPath.row - 1) >= categories.startIndex && (indexPath.row - 1) < categories.endIndex  {
            let cell = tableView.dequeueReusableCell(withIdentifier: categoryCell, for: indexPath) as! ColouringsCategory
            
            if categories[indexPath.row - 1].title == "Wash and Blow" {
                cell.titleLabel.text = categories[indexPath.row - 1].title
                cell.timeLabel.text = ""
                cell.priceLabel.text = ""
                cell.titleLabel.textColor = UIColor.white
                cell.categoryView.backgroundColor = #colorLiteral(red: 0.995941937, green: 0.7001321912, blue: 0.8456620574, alpha: 1)
                cell.selectedBackgroundView = backgroundView
                return cell
                
                
            }else {

                cell.titleLabel.text = categories[indexPath.row - 1].title
                if categories[indexPath.row - 1].min == 0 {
                    cell.timeLabel.text = "\((categories[indexPath.row - 1].hours)!)hrs"
                }else {
                    cell.timeLabel.text = "\((categories[indexPath.row - 1].hours)!)hrs  \((categories[indexPath.row - 1].min)!) mins"
                }
                cell.priceLabel.text = "£\((categories[indexPath.row - 1].price)!)"
                
            }
            cell.selectedBackgroundView = backgroundView
            return cell
        }
        else if (indexPath.row - categories.count - 1) >= checkCategories.startIndex && (indexPath.row - categories.count - 1) < checkCategories.endIndex{
            let cell = tableView.dequeueReusableCell(withIdentifier: checkBox, for: indexPath) as! ColouringsCheckBox
            cell.checkLabel.text = "\((checkCategories[(indexPath.row - categories.count - 1)].title)!) \((checkCategories[(indexPath.row - categories.count - 1)].min)!)mins £\((checkCategories[(indexPath.row - categories.count - 1)].price)!)"
            cell.selectedBackgroundView = backgroundView
            return cell
        }
        else if (indexPath.row - 1 - categories.count - checkCategories.count) == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: pickTime, for: indexPath) as! ColouringsPickTime
            cell.selectedBackgroundView = backgroundView
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: bookingCell, for: indexPath) as! ColouringsBookings
            cell.selectedBackgroundView = backgroundView
            return cell
        }
        
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var screenTitle: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = screenTitle

        
        
  // Set navigation color by following code
//        self.navigationController?.navigationBar.barTintColor = UIColor.white

        


        navigationController?.navigationBar.tintColor = .white

    

        
     
        
        
        

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

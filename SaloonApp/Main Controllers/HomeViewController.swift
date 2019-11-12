//
//  ViewController.swift
//  SaloonApp
//
//  Created by haider ali on 07/11/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit


class BookingStatus: UITableViewCell {
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
}



class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let colouringsIdentifier = "goToColourings"
    
    let cellId = "categoryCell"
    
    let status = "status"
    
    var categories = ["Colourings", "Treatments", "Relaxing", "Braiding", "Weaving", "Haircut"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count + 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.white
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: status, for: indexPath) as! BookingStatus
            cell.selectedBackgroundView = backgroundView
            return cell
        }
        else {
            let cell = categoryTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CategoryCell
            cell.categoryImageView.image = UIImage(named: "user")
            cell.titleLabel.text = categories[indexPath.row - 1]
            cell.selectedBackgroundView = backgroundView
            return cell

        }
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            
        }
        else {
            if indexPath.row == 1 {
                screenTitle = categories[indexPath.row - 1]
                
                sendCheckCategories = [ColouringCheckBoxCategories.init(title: "Extensions Per Bundle", price: 0, min: 0), ColouringCheckBoxCategories.init(title: "Long Hair Add", price: 10, min: 30)]
                sendCategories = [ColouringCategories.init(title: "Full Head Color", price: 45, hours: 2, min: 0),ColouringCategories.init(title: "Half Head Color", price: 35, hours: 1, min: 45),ColouringCategories.init(title: "Highlights Full Head", price: 70, hours: 2, min: 45),ColouringCategories.init(title: "Highlights Half Head", price: 55, hours: 2, min: 30)]
            }
            else if indexPath.row == 2 {
                sendCheckCategories = [ColouringCheckBoxCategories.init(title: "Long Hair Add", price: 10, min: 30)]
                sendCategories = [ColouringCategories.init(title: "Detendling Treatment", price: 65, hours: 1, min: 45),ColouringCategories.init(title: "Oil Treatment", price: 50, hours: 1, min: 45),ColouringCategories.init(title: "Moistur Treatment", price: 80, hours: 2, min: 30),ColouringCategories.init(title: "Keratin Treatment", price: 80, hours: 2, min: 30)]
            }
            else if indexPath.row == 3 {
                sendCheckCategories = [ColouringCheckBoxCategories.init(title: "Long Hair Add", price: 10, min: 30)]
                sendCategories = [ColouringCategories.init(title: "With Your Kit", price: 35, hours: 2, min: 0),ColouringCategories.init(title: "With Our Kit", price: 45, hours: 2, min: 0),ColouringCategories.init(title: "Curly Perm", price: 85, hours: 4, min: 0),ColouringCategories.init(title: "With Treatment", price: 10, hours: 0, min: 15)]
            }
            else if indexPath.row == 4 {
                sendCheckCategories = [ColouringCheckBoxCategories.init(title: "Long Hair Add", price: 10, min: 30)]
                sendCategories = [ColouringCategories.init(title: "Afro Kinky", price: 55, hours: 4, min: 0),
                                  ColouringCategories.init(title: "Box Braid", price: 60, hours: 4, min: 0),
                                  ColouringCategories.init(title: "Singles", price: 60, hours: 4, min: 0),
                                  ColouringCategories.init(title: "Twists", price: 60, hours: 4, min: 0),
                                  ColouringCategories.init(title: "Faux Lock", price: 70, hours: 4, min: 0),
                                  ColouringCategories.init(title: "Ghana Braid all black", price: 40, hours: 2, min: 0),
                                  ColouringCategories.init(title: "Crochet Braid", price: 120, hours: 6, min: 0),
                                  ColouringCategories.init(title: "Knotless Braid", price: 100, hours: 5, min: 0),
                                  ColouringCategories.init(title: "Ghana Braid Stylish", price: 65, hours: 4, min: 0),
                                  ColouringCategories.init(title: "longer Than 22 Inches", price: 15, hours: 0, min: 45),
                                  ColouringCategories.init(title: "longer Than 24 Inches", price: 25, hours: 0, min: 45)]
            }
            else if indexPath.row == 5 {
                sendCheckCategories = [ColouringCheckBoxCategories.init(title: "Long Hair Add", price: 10, min: 30)]
                sendCategories = [ColouringCategories.init(title: "Full Fringe", price: 35, hours: 2, min: 45),
                                  ColouringCategories.init(title: "4*4 Closure", price: 45, hours: 2, min: 45),
                                  ColouringCategories.init(title: "Frontal", price: 55, hours: 2, min: 45),
                                  ColouringCategories.init(title: "360 Frontal", price: 65, hours: 2, min: 45),
                                  ColouringCategories.init(title: "Tape Weave", price: 50, hours: 1, min: 0),
                                  ColouringCategories.init(title: "Crochet", price: 70, hours: 2, min: 45),
                                  ColouringCategories.init(title: "Crochet and Mesh", price: 80, hours: 2, min: 45),
                                  ColouringCategories.init(title: "Micro Weave", price: 90, hours: 2, min: 30),
                                  ColouringCategories.init(title: "Tonging", price: 15, hours: 0, min: 30),
                                  ColouringCategories.init(title: "Spiral Tonging", price: 25, hours: 0, min: 45)]
            }
            else {
                sendCheckCategories = []
                sendCategories = [ColouringCategories.init(title: "Adult Hair Cut", price: 20, hours: 0, min: 45),ColouringCategories.init(title: "Children Cut", price: 15, hours: 0, min: 45),ColouringCategories.init(title: "Wash and Blow", price: 0, hours: 0, min: 0),ColouringCategories.init(title: "Men", price: 10, hours: 2, min: 45),ColouringCategories.init(title: "Women", price: 25, hours: 1, min: 30)]
            }
            self.performSegue(withIdentifier: colouringsIdentifier, sender: self)

           
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ColouringsViewController
        vc.categories = sendCategories
        vc.checkCategories = sendCheckCategories
        vc.screenTitle = screenTitle
        
    }
    
    
    var sendCheckCategories: [ColouringCheckBoxCategories]?
    var sendCategories: [ColouringCategories]?
    var screenTitle: String?
    

    @IBOutlet weak var categoryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTableView.dataSource = self
        categoryTableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }


}


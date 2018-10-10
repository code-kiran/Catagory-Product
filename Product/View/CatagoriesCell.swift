//
//  CatagoriesCell.swift
//  Product
//
//  Created by kiran on 9/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class CatagoriesCell: UITableViewCell {

    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    func updateViews(catagory: Catagory) {
        catagoryImage.image = UIImage(named: catagory.imageName)
        catagoryTitle.text = catagory.title   
        
    }

}

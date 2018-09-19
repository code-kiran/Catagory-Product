//
//  ViewController.swift
//  Product
//
//  Created by kiran on 9/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class CatagoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var catagoriesTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        catagoriesTable.delegate = self
        catagoriesTable.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        hideNavigationBar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        showNavigationBar()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCatagories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CatCell", for: indexPath) as? CatagoriesCell {
            let catagory = DataService.instance.getCatagories()[indexPath.row]
            cell.updateViews(catagory: catagory)
            return cell
        }
        else {
            return CatagoriesCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let catagory = DataService.instance.getCatagories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: catagory)
            }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton            
            assert(sender as? Catagory != nil) //at built time , layer for protection from being crash 
            productVC.initProducts(catagory: sender as! Catagory)
        }
    }


}


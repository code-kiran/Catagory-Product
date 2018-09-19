//
//  ProductsVC.swift
//  Product
//
//  Created by kiran on 9/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCollectionview:UICollectionView!
    private (set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollectionview.delegate = self
        productsCollectionview.dataSource = self
    }
    
    
    func initProducts(catagory: Catagory) {
        products = DataService.instance.getProducts(forCatagoryTitle: catagory.title)
        navigationItem.title = catagory.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product  = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        else {
            return ProductCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailVC", sender: nil)
    }
    
    
}

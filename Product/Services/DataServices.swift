//
//  DataServices.swift
//  Product
//
//  Created by kiran on 9/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import Foundation

class DataService {
    //static : we made vairable of a copy of dataserive a single memory which will not be reclaimed, singleton . static
    static let instance = DataService()
    
    
    //made private so that noone can access data directly so made function getCatagories() for manipulating the array catagories
    private let catagories = [
        Catagory(title: "HATS", imageName: "hats.png"),
        Catagory(title: "SHIRTS", imageName: "shirts.png"),
        Catagory(title: "HOODIES", imageName: "hoodies.png"),
        Catagory(title: "DIGITAL GOODS", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "this is hats hats must be twoline ", price: "$44", imageName: "hat01.png"),
        Product(title: "this is hats hats must be twoline ", price: "$44", imageName: "hat02.png"),
        Product(title: "this is hats hats must be twoline ", price: "$44", imageName: "hat03.png"),
        Product(title: "this is hats hats must be twoline ", price: "$44", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "this is hoodie 01", price: "99$", imageName: "hoodie01"),
        Product(title: "this is hoodie 01", price: "99$", imageName: "hoodie02"),
        Product(title: "this is hoodie 01", price: "99$", imageName: "hoodie03"),
        Product(title: "this is hoodie 01", price: "99$", imageName: "hoodie04")
    ]
    private let shirts = [
        Product(title: "this is shirts and shirts ", price: "$44", imageName: "shirt01"),
        Product(title: "this is shirts and shirts ", price: "$44", imageName: "shirt02"),
        Product(title: "this is shirts and shirts ", price: "$44", imageName: "shirt03"),
        Product(title: "this is shirts and shirts ", price: "$44", imageName: "shirt04"),
        Product(title: "this is shirts and shirts ", price: "$44", imageName: "shirt05")
    ]
    private let digialGoods = [Product]()
    
    func getCatagories() -> [Catagory] {
        return catagories
    }
    
    
    func getProducts(forCatagoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
             return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL GOODS":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
    return digialGoods
    }
    
    
    
    
}

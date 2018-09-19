//
//  ExtensionUIViewController.swift
//  Product
//
//  Created by kiran on 9/19/18.
//  Copyright © 2018 kiran. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func hideNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func showNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
        
}

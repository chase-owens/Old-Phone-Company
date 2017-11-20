//
//  ProductViewController.swift
//  Old Phone Company
//
//  Created by Chase Owens on 11/17/17.
//  Copyright © 2017 Chase Owens. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    
    var product: Product?


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let p = product {
            productLabel.text = p.name
            if let i = p.picture {
                productImage.image = UIImage(named: i)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


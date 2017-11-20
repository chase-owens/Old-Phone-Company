//
//  ProductsTableViewController.swift
//  Old Phone Company
//
//  Created by Chase Owens on 11/18/17.
//  Copyright © 2017 Chase Owens. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    var productImages: [UIImage]?
    let cellImages = [#imageLiteral(resourceName: "image-cell1"), #imageLiteral(resourceName: "image-cell2"), #imageLiteral(resourceName: "image-cell3"), #imageLiteral(resourceName: "image-cell4")]
    var products = [Product()]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        productNames = ["1907 Wall Set", "1921 Dial Phone", "1937 Desk Set", "1984 Motorolla Portable"]
        productImages = [#imageLiteral(resourceName: "phone-fullscreen1"), #imageLiteral(resourceName: "phone-fullscreen2"), #imageLiteral(resourceName: "phone-fullscreen3"), #imageLiteral(resourceName: "phone-fullscreen4")]
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Phone"
        product1.cellImage = "image-cell1"
        product1.picture = "phone-fullscreen1"
        
        product2.name = "1921 Dial Phone"
        product2.cellImage = "image-cell2"
        product2.picture = "phone-fullscreen2"
        
        product3.name = "1937 Desk Set"
        product3.cellImage = "image-cell3"
        product3.picture = "phone-fullscreen3"
        
        product4.name = "1984 Motorolla Portable"
        product4.cellImage = "image-cell4"
        product4.picture = "phone-fullscreen4"
        
        products = [product1, product2, product3, product4]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    //setting recycle pattern I think. Not sure about this...
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        let product = products[indexPath.row]
        cell.textLabel?.text = product.name
        cell.imageView?.image = UIImage(named: product.cellImage!)
        return cell
    }
    
    //sending productLabel with product name and product image
    //sending data from one view controller to another
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let productVC = segue.destination as? ProductViewController
        let cell = sender as! UITableViewCell
        if let indexPath = tableView.indexPath(for: cell) {
            let productSelected = products[indexPath.row]
            productVC?.product = productSelected
        }

    }
    
    @IBAction func aboutUsButtonTapped(_ sender: UIButton) {
        
    }
    
}

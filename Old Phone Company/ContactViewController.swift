//
//  ContactViewController.swift
//  Old Phone Company
//
//  Created by Chase Owens on 11/18/17.
//  Copyright © 2017 Chase Owens. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 720)
    }


}

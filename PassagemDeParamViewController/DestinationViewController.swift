//
//  DestinationViewController.swift
//  PassagemDeParamViewController
//
//  Created by Marco on 7/22/15.
//  Copyright (c) 2015 Marco. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = "\(number)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

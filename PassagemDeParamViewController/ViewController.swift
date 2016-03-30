//
//  ViewController.swift
//  PassagemDeParamViewController
//
//  Created by Marco on 7/22/15.
//  Copyright (c) 2015 Marco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellId") as! UITableViewCell
        cell.textLabel!.text = "\(indexPath.row)"
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail" {
            let cell = sender as! UITableViewCell
            let indexPath = self.tableView.indexPathForCell (cell)!
            
            let destination = segue.destinationViewController as! DestinationViewController
            
            destination.number = indexPath.row
        }
    }
}


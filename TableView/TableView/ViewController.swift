//
//  ViewController.swift
//  TableView
//
//  Created by Gerd Richter on 21.03.16.
//  Copyright © 2016 wirelesscoder. All rights reserved.
//

import UIKit

//  add the UITableViewDelegate to let Viewcontroller manage the TableView
class ViewController: UIViewController, UITableViewDelegate {
    
    var cellContent = ["Ruth", "Katrin", "Gerd", "Elvis"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // defines the number of sections
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return cellContent.count
    }
    
    //defines the content of each individuell cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  TableViewController.swift
//  Programmer Resource
//
//  Created by Guled Ali on 3/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    //instance of resource
    var resource: [Resource]!
    //returns the number of resources in a row
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resource.count
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //populating the resourse to the table view controller
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = resource[indexPath.row].name
        return cell
    }
    
    //segueing to the detail view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let selectedRow = tableView.indexPathForSelectedRow!.row
            let selectedResource = resource![selectedRow]
            let detailController = segue.destination as! DetailViewController
            detailController.resource = selectedResource
        }
        
    }
    
}

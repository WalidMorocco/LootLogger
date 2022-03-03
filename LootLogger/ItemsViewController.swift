//
//  ItemsViewController.swift
//  LootLogger
//
//  Created by Amar, Walid  on 3/2/22.
//

import UIKit

class ItemsViewController: UITableViewController{
    var itemStore: ItemStore!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Create an Instance of UITableViewCell with defaul appearance
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell
    }
}

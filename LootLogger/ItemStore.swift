//
//  ItemStore.swift
//  LootLogger
//
//  Created by Amar, Walid  on 3/2/22.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    init () {
        for _ in 0..<5{
            createItem()
        }
    }
    
    
}



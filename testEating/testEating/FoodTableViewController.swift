//
//  FoodTableViewController.swift
//  testEating
//
//  Created by PENG XU on 4/30/16.
//  Copyright © 2016 PENG XU. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var availableFoodOffers = [FoodOffer]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        availableFoodOffers.append(FoodOffer(name: "Apple", creatorName: "Chris"))
        availableFoodOffers.append(FoodOffer(name: "Orange", creatorName: "Fay"))
        availableFoodOffers.append(FoodOffer(name: "Pineapple", creatorName: "Jeremy"))

    }

    // MARK: - Table view data source

    @IBAction func addButtonTapped(sender: AnyObject) {
        print("button tapped")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "identif1" {
//          let destination = segue.destinationViewController as! ...
            let source = segue.sourceViewController as! ...
            destination.name = source.name
        } else if segue.identifier == "iden2" {
            
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return availableFoodOffers.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("foodOfferCell", forIndexPath: indexPath) as! FoodOfferTableViewCell

        let foodOffer = availableFoodOffers[indexPath.row]
        cell.name.text = foodOffer.name
        cell.creatorName.text = foodOffer.creatorName
        
//        let image: NSData = retrieveFromDB(id)
//        cell.foodImage.image = UIImage(data: image)

        return cell
    }
    
}

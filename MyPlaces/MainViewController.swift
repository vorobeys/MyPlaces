//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Ilya Vorobyev on 03/04/2020.
//  Copyright © 2020 Ilya Vorobyev. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames =  ["Рататуй", "Своя компания", "Burger King", "KFC", "PLOV", "Рыболов"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: restaurantNames[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}

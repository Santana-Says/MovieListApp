//
//  Movie+CoreDataProperties.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var link: String?
    @NSManaged var plot: String?
    @NSManaged var comment: String?

}

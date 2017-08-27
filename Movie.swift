//
//  Movie.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}

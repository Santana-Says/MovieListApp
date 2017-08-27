//
//  CreateMovieVC.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//

import UIKit
import CoreData

class CreateMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var commentField: UITextField!
    @IBOutlet weak var linkField: UITextField!
    @IBOutlet weak var plotField: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        movieImg.layer.cornerRadius = 4.0
        movieImg.clipsToBounds = true
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    @IBAction func addImage(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createMovie(sender: AnyObject) {
        if let title = titleField.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = title
            movie.comment = commentField.text
            movie.link = linkField.text
            movie.setMovieImage(movieImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
        }
    }
    
    @IBAction func onCancelBtnPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}

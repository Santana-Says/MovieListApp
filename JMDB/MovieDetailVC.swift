//
//  MovieDetailVC.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//

import UIKit

class MovieDetailVC: UIViewController {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var linkLbl: UILabel!
    @IBOutlet weak var plotLbl: UILabel!
    
    var selectedMovie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedMovie != nil {
            movieImg.image = selectedMovie.getMovieImage()
            self.navigationItem.title = selectedMovie.title
            commentLbl.text = selectedMovie.comment
            linkLbl.text = selectedMovie.link
            plotLbl.text = selectedMovie.plot
        }
    }

}

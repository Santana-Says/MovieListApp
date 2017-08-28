//
//  MovieDetail.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//

import UIKit

class MovieDetail: UIView {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var linkLbl: UILabel!
    @IBOutlet weak var plotLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func movieSetup(movie: Movie) {
        movieImg.image = movie.getMovieImage()
        titleLbl.text = movie.title
        commentLbl.text = movie.comment
        linkLbl.text = movie.link
        plotLbl.text = movie.plot
    }
    
}

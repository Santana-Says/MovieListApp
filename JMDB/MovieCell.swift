//
//  MovieCell.swift
//  JMDB
//
//  Created by Jeffrey Santana on 8/27/17.
//  Copyright © 2017 Jeffrey Santana. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var linkLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(movie: Movie) {
        titleLbl.text = movie.title
        movieImg.image = movie.getMovieImage()
        commentLbl.text = movie.comment
        linkLbl.text = movie.link
    }

}

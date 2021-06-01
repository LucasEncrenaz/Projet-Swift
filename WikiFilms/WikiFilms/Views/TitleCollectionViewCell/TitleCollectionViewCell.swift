//
//  TitleCollectionViewCell.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "WikiFilms"
    }
    
    static var nib: UINib {
        return UINib(nibName: "TitleCollectionViewCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "TitleCollectionViewCell"
    }

}

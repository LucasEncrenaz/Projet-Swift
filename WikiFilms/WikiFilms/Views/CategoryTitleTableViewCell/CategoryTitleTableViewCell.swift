//
//  CategoryTitleTableViewCell.swift
//  WikiFilms
//
//  Created by Lucas Encrenaz on 27/04/2021.
//

import UIKit

class CategoryTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static var nib: UINib {
        return UINib(nibName: "CategoryTitleTableViewCell", bundle: nil)
    }
    
    static var reuseIdentifier: String {
        return "CategoryTitleTableViewCell"
    }
    
}

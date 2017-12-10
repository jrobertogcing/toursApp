//
//  ToursTableViewCell.swift
//  TableViewJSON
//
//  Created by Robert on 09/12/17.
//  Copyright © 2017 Robert González. All rights reserved.
//

import UIKit

class ToursTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageTourCell: UIImageView!
    
    @IBOutlet weak var tituloLabelCell: UILabel!
    
    @IBOutlet weak var precioLabelCell: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

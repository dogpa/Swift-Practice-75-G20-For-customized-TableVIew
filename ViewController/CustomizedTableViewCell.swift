//
//  CustomizedTableViewCell.swift
//  Swift Practice # 74  G20 For customized TableVIew
//
//  Created by Dogpa's MBAir M1 on 2021/9/13.
//

import UIKit

class CustomizedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    
    @IBOutlet weak var countryFlagImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

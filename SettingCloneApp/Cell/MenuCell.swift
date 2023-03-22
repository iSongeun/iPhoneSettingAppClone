//
//  MenuCell.swift
//  SettingCloneApp
//
//  Created by 이송은 on 2023/03/13.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var middleTitleLabel: UILabel!
    
    @IBOutlet weak var rightImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  ProfileCell.swift
//  SettingCloneApp
//
//  Created by 이송은 on 2023/03/13.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        UISetting()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func UISetting(){
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        
        firstLabel.textColor = .black
        secondLabel.textColor = .darkGray
    }
}

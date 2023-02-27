//
//  TableViewCell.swift
//  facebook
//
//  Created by HuyNguyen on 23/02/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var btnAcc: UIButton!
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lbCap: UILabel!
    @IBOutlet weak var lbAcc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}

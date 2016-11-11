//
//  Cell1TableViewCell.swift
//  SCW-MUSASHI
//
//  Created by leo on 11/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class Cell1TableViewCell: UITableViewCell {

    @IBOutlet weak var lbSetor: UILabel!
    @IBOutlet weak var lbLinha: UILabel!
    @IBOutlet weak var lbOperador: UILabel!
    @IBOutlet weak var ldData: UILabel!
    var informacoes: [String: Any]? {
        didSet {
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

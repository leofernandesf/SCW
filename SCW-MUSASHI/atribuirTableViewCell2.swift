//
//  atribuirTableViewCell2.swift
//  SCW-MUSASHI
//
//  Created by leo on 14/11/16.
//  Copyright © 2016 tap4. All rights reserved.
//

import UIKit

class atribuirTableViewCell2: UITableViewCell {
    
    @IBOutlet weak var tvCategorias: UITextView!

    var informacoes: [String: Any]? {
        didSet {
            if let str = informacoes?["category_tree"] as? String {
                print(str)
                tvCategorias.text = str
            }
            
            
            
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

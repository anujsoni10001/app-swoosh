//
//  BorderButtton.swift
//  app-swoosh
//
//  Created by Anuj Soni on 09/10/21.
//

//Can Also be done by Creating Custom Views

import UIKit

class BorderButtton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
    super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 3.0
    }

}

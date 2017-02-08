//
//  ClearAllLabelCell.swift
//  CountrySort
//
//  Created by qwernkdfkahkry on 2/7/17.
//  Copyright © 2017 qwernkdfkahkry. All rights reserved.
//

import UIKit

class ClearAllLabelCell: UICollectionViewCell {
    
    //here need to add a ui button
    //need to add action when uibutton is pressed
    //where to put uibutton action so that align with selection of ui collection view
    
    let clearAll: UIButton = {
        let button = UIButton()
        button.setTitle("Clear All", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(clearAll)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

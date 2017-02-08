//
//  SelectCountryLabelCell.swift
//  CountrySort
//
//  Created by qwernkdfkahkry on 2/7/17.
//  Copyright © 2017 qwernkdfkahkry. All rights reserved.
//

import UIKit

class SelectCountryLabelCell: UICollectionViewCell {
    
    //this has a uilable and has a uibutton
    //uibutton has a image that is in two selected states
    
    let countryLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.font = UIFont(name: "Avenir-Book", size: 18)
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.text = "hello"
        return label
    }()
    
    let countrySelectButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    let genderButtonPressed = UIImage(named: "radio_black_checked_24")
    let genderButtonNotPressed = UIImage(named: "radio_black_unchecked_24")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(countryLabel)
        self.contentView.addSubview(countrySelectButton)
        self.contentView.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

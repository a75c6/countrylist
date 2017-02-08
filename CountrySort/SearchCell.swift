//
//  SearchCell.swift
//  CountrySort
//
//  Created by qwernkdfkahkry on 2/7/17.
//  Copyright © 2017 qwernkdfkahkry. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    lazy var searchBar: UISearchBar = {
        let view = UISearchBar()
        view.showsCancelButton = true
        self.contentView.addSubview(view)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        searchBar.frame = contentView.bounds
    }
}

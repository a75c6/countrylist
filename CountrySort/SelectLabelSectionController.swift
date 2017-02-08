//
//  SelectLabelController.swift
//  CountrySort
//
//  Created by qwernkdfkahkry on 2/8/17.
//  Copyright © 2017 qwernkdfkahkry. All rights reserved.
//

import UIKit
import IGListKit

var object: String?

class SelectLabelSectionController: IGListSectionController {
    
    override init() {
        super.init()
    }

}

extension SelectLabelSectionController: IGListSectionType {
    
    
    
    func numberOfItems() -> Int {
        return 1
    }
    
    func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 55)
    }
    
    func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: SelectCountryLabelCell.self, for: self, at: index) as! SelectCountryLabelCell
        cell.countryLabel.text = object
        return cell
    }
    
    func didUpdate(to object: Any) {
        //self.object = String(describing: object)
    }
    
    func didSelectItem(at index: Int) {
        //
    }
}

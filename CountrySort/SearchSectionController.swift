//
//  SearchSectionController.swift
//  CountrySort
//
//  Created by qwernkdfkahkry on 2/7/17.
//  Copyright © 2017 qwernkdfkahkry. All rights reserved.
//

import UIKit
import IGListKit

protocol SearchSectionControllerDelegate: class {
    func searchSectionController(_ sectionController: SearchSectionController, didChangeText text: String)
}

class SearchSectionController: IGListSectionController {
    
    weak var delegate: SearchSectionControllerDelegate?
    
    override init() {
        super.init()
        scrollDelegate = self
    }

}

extension SearchSectionController: IGListSectionType {
    func numberOfItems() -> Int {
        return 1
    }
    
    func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 44)
    }
    
    func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: SearchCell.self, for: self, at: index) as! SearchCell
        cell.searchBar.delegate = self
        return cell
    }
    
    func didUpdate(to object: Any) {
        //
    }
    
    func didSelectItem(at index: Int) {
        //
    }
}

extension SearchSectionController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        delegate?.searchSectionController(self, didChangeText: searchText)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        delegate?.searchSectionController(self, didChangeText: "")
    }
}

extension SearchSectionController: IGListScrollDelegate {

    
    func listAdapter(_ listAdapter: IGListAdapter!, willBeginDragging sectionController: IGListSectionController!) {
        //
    }
    
    func listAdapter(_ listAdapter: IGListAdapter!, didScroll sectionController: IGListSectionController!) {
        if let searchBar = (collectionContext?.cellForItem(at: 0, sectionController: self) as? SearchCell)?.searchBar {
            searchBar.text = ""
            searchBar.resignFirstResponder()
        }
    }
    
    func listAdapter(_ listAdapter: IGListAdapter!, didEndDragging sectionController: IGListSectionController!, willDecelerate decelerate: Bool) {
        //
    }
}

extension SearchSectionController: IGListSingleSectionControllerDelegate {
    func didSelect(_ sectionController: IGListSingleSectionController) {
        //
    }
}

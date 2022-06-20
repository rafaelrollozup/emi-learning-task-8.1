//
//  MovieSectionHeaderView.swift
//  LearningTask-8.1
//
//  Created by rafael.rollo on 13/06/2022.
//

import UIKit

class MovieSectionHeaderView: UICollectionReusableView {
    @IBOutlet private weak var titleLabel: UILabel!
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
}

//
//  MovieViewCell.swift
//  LearningTask-8.1
//
//  Created by rafael.rollo on 13/06/2022.
//

import UIKit

class MovieViewCell: UICollectionViewCell {
    @IBOutlet private weak var bannerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie: Movie? {
        didSet {
            guard let movie = movie else {
                return
            }
            
            bannerImageView.image = .init(named: movie.posterImage)
            titleLabel.text = movie.title
        }
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
    
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        layoutAttributes.frame.size.height = size.height
        
        setNeedsLayout()
        return layoutAttributes
    }
}

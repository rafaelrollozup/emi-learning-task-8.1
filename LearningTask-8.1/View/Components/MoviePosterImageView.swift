//
//  MoviePosterImageView.swift
//  LearningTask-8.1
//
//  Created by rafael.rollo on 15/06/2022.
//

import UIKit

class MoviePosterImageView: UIImageView {

    private static let heightConstant: CGFloat = 150
    private static let aspectRatio: Double = 27 / 40
    private static let posterSize = CGSize(width: heightConstant * aspectRatio,
                                           height: heightConstant)

    var dropShadow: Bool?
    
    override init(image: UIImage?) {
        super.init(image: image)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addTheme()
        addConstraints()
    }
    
    private func addTheme() {
        contentMode = .scaleAspectFill
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: Self.posterSize.width),
            heightAnchor.constraint(equalToConstant: Self.posterSize.height)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let dropShadow = dropShadow, dropShadow else { return }

        let posterRect = CGRect(origin: .zero, size: Self.posterSize)
        
        layer.shadowPath = UIBezierPath(rect: posterRect).cgPath
        layer.shadowRadius = 16.0
        layer.shadowOpacity = 1
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: -1)
    }
}

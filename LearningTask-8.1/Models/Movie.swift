//
//  Movie.swift
//  LearningTask-8.1
//
//  Created by rafael.rollo on 10/06/2022.
//

import Foundation

enum MovieRating: String {
    case free = "L"
    case notRecommendedUnder10 = "10"
    case notRecommendedUnder12 = "12"
    case notRecommendedUnder14 = "14"
    case notRecommendedUnder16 = "16"
    case notRecommendedUnder18 = "18"
}

struct Movie {
    let bannerImage: String
    let posterImage: String
    let title: String
    let shortTitle: String
    let rating: MovieRating
    let duration: TimeInterval
    let criticsScore: Int
    let publicScore: Int
    
    init(bannerImage: String, posterImage: String, title: String, shortTitle: String,
         rating: MovieRating, durationInMinutes: Double, criticsScore: Int, publicScore: Int) {
        self.bannerImage = bannerImage
        self.posterImage = posterImage
        self.title = title
        self.shortTitle = shortTitle
        self.rating = rating
        self.duration = durationInMinutes * 60
        self.criticsScore = criticsScore
        self.publicScore = publicScore
    }
}

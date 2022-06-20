//
//  MoviewAPI.swift
//  LearningTask-8.1
//
//  Created by rafael.rollo on 13/06/2022.
//

import Foundation

class MoviesAPI {
    
    func loadMovies() -> [Movie] {
        return [
            Movie(bannerImage: "AnimaisFantasticosBanner", posterImage: "AnimaisFantasticos",
                  title: "Animais Fantásticos: Os Segredos de Dumbledore",
                  shortTitle: "Animais Fantásticos",
                  rating: .notRecommendedUnder12, durationInMinutes: 135,
                  criticsScore: 46, publicScore: 83),
            Movie(bannerImage: "CidadePerdidaBanner", posterImage: "CidadePerdida",
                  title: "Cidade Perdida", shortTitle: "Cidade Perdida",
                  rating: .notRecommendedUnder14, durationInMinutes: 112,
                  criticsScore: 79, publicScore: 83),
            Movie(bannerImage: "DoutorEstranhoBanner", posterImage: "DoutorEstranho",
                  title: "Doutor Estranho no Multiverso da Loucura", shortTitle: "Doutor Estranho",
                  rating: .notRecommendedUnder14, durationInMinutes: 126,
                  criticsScore: 74, publicScore: 86),
            Movie(bannerImage: "JurassicWorldBanner", posterImage: "JurassicWorld",
                  title: "Jurassic World: Domínio", shortTitle: "Jurassic World",
                  rating: .notRecommendedUnder12, durationInMinutes: 152,
                  criticsScore: 30, publicScore: 79),
            Movie(bannerImage: "OHomemDoNorteBanner", posterImage: "OHomemDoNorte",
                  title: "O Homem do Norte", shortTitle: "O Homem do Norte",
                  rating: .notRecommendedUnder18, durationInMinutes: 140,
                  criticsScore: 89, publicScore: 64),
            Movie(bannerImage: "TopGunBanner", posterImage: "TopGun",
                  title: "Top Gun: Maverick", shortTitle: "Top Gun",
                  rating: .notRecommendedUnder12, durationInMinutes: 131,
                  criticsScore: 97, publicScore: 99),
        ]
    }
    
}

//: Playground - noun: a place where people can play

import UIKit

struct Place {
    var rating: Int?
    var distance: Double?
}

func sortPlacesByRatingAndDistance(_ places: [Place]) -> [Place] {
    return places.sorted { t1, t2 in
        if t1.rating == t2.rating {
            guard let distance1 = t1.distance, let distance2 = t2.distance else {
                return false
            }
            return distance1 < distance2
        }
        guard let rating1 = t1.rating, let rating2 = t2.rating else {
            return false
        }
        return rating1 > rating2
    }
}

let places = [Place(rating: 3, distance: 127), Place(rating: 4, distance: 423), Place(rating: 5, distance: nil), Place(rating: nil, distance: 100), Place(rating: nil, distance: 34), Place(rating: nil, distance: nil)]

let sortedPlaces = sortPlacesByRatingAndDistance(places)

//
//  Constants.swift
//  WeatherForcastTestProject
//
//  Copyright © 2019 Buuuk. All rights reserved.
//

import Foundation

let kLatitude = 1.303052
let kLongitude = 103.836629
let kCityName = "Orchard"
let kCountryName = "Singapore"

// Today weather API
//https://api.openweathermap.org/data/2.5/weather?lat=1.303052&lon=103.836629&appid=3962ffa8c0a12cbe2bc27a120e602ee5&units=metric

// Forcast API
//https://api.openweathermap.org/data/2.5/forecast?lat=1.303052&lon=103.836629&appid=3962ffa8c0a12cbe2bc27a120e602ee5&units=metric

enum WindDirection: String {
    case N
    case NNE
    case NE
    case ENE
    case E
    case ESE
    case SE
    case SSE
    case S
    case SSW
    case SW
    case WSW
    case W
    case WNW
    case NW
    case NNW
    
    static func fromDegree(_ deg: Int) -> WindDirection {
        switch deg {
        case 11...33:
            return .NNE
        case 34...56:
            return .NE
        case 57...78:
            return .ENE
        case 79...101:
            return .E
        case 102...123:
            return .ESE
        case 124...146:
            return .SE
        case 147...168:
            return .SSE
        case 169...191:
            return .S
        case 192...213:
            return .SSW
        case 214...236:
            return .SW
        case 237...258:
            return .WSW
        case 259...281:
            return.W
        case 282...303:
            return .WNW
        case 304...326:
            return .NW
        case 327...348:
            return .NNW
        default:
            return .N
        }
    }
}

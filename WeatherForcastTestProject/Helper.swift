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
let kOWMAPIKey = "a10c2c0052b31bf0977c78f522479ce5"

// Today weather API
//https://api.openweathermap.org/data/2.5/weather?lat=1.303052&lon=103.836629&appid=a10c2c0052b31bf0977c78f522479ce5&units=metric

// Forcast API
//https://api.openweathermap.org/data/2.5/forecast?lat=1.303052&lon=103.836629&appid=a10c2c0052b31bf0977c78f522479ce5&units=metric

// To convert wind direction from degree to text
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

enum IconSize {
    case small
    case big
}
enum IconType: String {
    case brokenClouds = "04"
    case clearSky = "01"
    case fewClouds = "02"
    case mist = "50"
    case rain = "10"
    case scatteredClouds = "03"
    case showerRain = "09"
    case snow = "13"
    case thunderstorm = "11"
    
    var name: String {
        switch self {
        case .brokenClouds:
            return "Broken Clouds"
        case .clearSky:
            return "Clear Sky"
        case .fewClouds:
            return "Few Clouds"
        case .mist:
            return "Mist"
        case .rain:
            return "Rain"
        case .scatteredClouds:
            return "Scattered Clouds"
        case .showerRain:
            return "Shower Rain"
        case .snow:
            return "Snow"
        case .thunderstorm:
            return "Thunderstorm"
        }
    }
    
}

// Weather icon mapping
// For example, "04n"
// >  04 = Broken Clouds
// >  n  = (Night)
func imageName(forIcon icon: String, size: IconSize) -> String {
    guard let iconType = IconType(rawValue: String(icon.dropLast())) else {
        return ""
    }
    
    let sizeString = size == .small ? "60x60" : "100x100"
    let periodOfTheDayString = icon.last == "d" ? "(Day)" : "(Night)"
    
    return sizeString + " " + iconType.name + " " + periodOfTheDayString
}

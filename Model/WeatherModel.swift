//
//  WeatherModel.swift
//  Clima
//
//  Created by Konstantin Yadrevskiy on 07.07.2021.
//

import Foundation

// Preparing data for the UI in WeatherViewController after parsing JSON
struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    //Formatting temperature from Double to String
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    //Picking SF Symbol for the UI depending on the JSON response
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}

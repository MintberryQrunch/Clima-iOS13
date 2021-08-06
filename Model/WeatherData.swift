//
//  WeatherData.swift
//  Clima
//
//  Created by Konstantin Yadrevskiy on 07.07.2021.
//

import Foundation

//Structured data from JSON response
struct WeatherData: Decodable {
    
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}

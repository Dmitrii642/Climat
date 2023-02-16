//
//  WeatherModel.swift
//  Climat
//
//  Created by Дмитрий Яковлев on 20.02.2023.
//

import Foundation

struct WeatherModel{
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        String(format: "%.1f", temperature)
    }
    
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.raid"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 800...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
        
    }
}

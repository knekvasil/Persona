//
//  Weather.swift
//  Persona
//
//  Created by Kalju Jake Nekvasil on 11/4/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import Foundation

struct Weather {
    let dateAndTime: Date
    
    let city: String
    let longitude: Double
    let latitude: Double
    
    let weatherID: Int
    let mainWeather: String
    let weatherDescription: String
    let weatherIconID: String 
    
    let temp: Double
    var tempFahrenheit: Double {
        get{
            return (temp - 273.15) * 1.8 + 32
        }
    }
    
    let humidity: Int
    let pressure: Int
    let cloudCover: Int
    
    init(weatherData: [String: AnyObject]) {
        dateAndTime = Date(timeIntervalSince1970: weatherData["dt"] as! TimeInterval)
        city = weatherData["name"] as! String
        
        let coordDict = weatherData["coord"] as! [String: AnyObject]
        longitude = coordDict["lon"] as! Double
        latitude = coordDict["lat"] as! Double
        
        let weatherDict = weatherData["weather"]![0] as! [String: AnyObject]
        weatherID = weatherDict["id"] as! Int
        mainWeather = weatherDict["main"] as! String
        weatherDescription = weatherDict["description"] as! String
        weatherIconID = weatherDict["icon"] as! String
        
        let mainDict = weatherData["main"] as! [String: AnyObject]
        temp = mainDict["temp"] as! Double
        humidity = mainDict["humidity"] as! Int
        pressure = mainDict["pressure"] as! Int
        
        cloudCover = weatherData["clouds"]!["all"] as! Int
    }
}

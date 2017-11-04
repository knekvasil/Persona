//
//  WeatherGetter.swift
//  Persona
//
//  Created by Kalju Jake Nekvasil on 11/4/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import Foundation

private let weatherURL = "http://api.openweathermap.org/data/2.5/weather"
private let weatherAPIKey = "0668039fba9f4b60181f7342bc58d6fe"

func getWeather(city: String) {
    
    let session = URLSession.shared
    let weatherRequestURL = URL(string: "\(weatherURL)?APPID=\(weatherAPIKey)&q=\(city)")!

    let dataTask = session.dataTask(with:weatherRequestURL) {
        (data: Data?, response: URLResponse?, error: Error?) in
        if let error = error {
            print("Error:\n\(error)")
        }
        else {
            do{
                let weather = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String:AnyObject]
                
                print("Date and time: \(weather["dt"]!)")
                print("City: \(weather["name"]!)")
                
                print("Longitude: \(weather["coord"]!["lon"]!!)")
                print("Latitude: \(weather["coord"]!["lat"]!!)")
                
                print("Weather ID: \((weather["weather"]![0]! as! [String:AnyObject])["id"]!)")
                print("Weather main: \((weather["weather"]![0]! as! [String:AnyObject])["main"]!)")
                print("Weather description: \((weather["weather"]![0]! as! [String:AnyObject])["description"]!)")
                print("Weather icon ID: \((weather["weather"]![0]! as! [String:AnyObject])["icon"]!)")
                
                print("Temperature: \(weather["main"]!["temp"]!!)")
                print("Humidity: \(weather["main"]!["humidity"]!!)")
                print("Pressure: \(weather["main"]!["pressure"]!!)")
                
                print("Cloud cover: \(weather["clouds"]!["all"]!!)")
                
                print("Wind direction: \(weather["wind"]!["deg"]!!) degrees")
                print("Wind speed: \(weather["wind"]!["speed"]!!)")
                
                print("Country: \(weather["sys"]!["country"]!!)")
                print("Sunrise: \(weather["sys"]!["sunrise"]!!)")
                print("Sunset: \(weather["sys"]!["sunset"]!!)")
                
            }catch let jsonError{
                print("JSON doesn't like something: \(jsonError.localizedDescription)")
            }
        }
    }
    dataTask.resume()
}

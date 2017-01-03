//
//  FahrenheitToCelsius.swift
//  TemperatureConverter
//
//  Created by Daesub Kim on 2016. 10. 4..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation

class FahrenheitToCelsius : Converter {
    
    var temperarture = 0.0
    
    convenience init() {
        self.init(temperature: 0.0)

    }
    
    init(temperature: Double) { // External param 으로 temperature 을 명시적으로 받겠다
        self.temperarture = temperature
    }
    
    var description : String {
        return "Converter = \(type.description) / F = \(fa) / C = \(ce)"
    }
    
    var type : ConverterType {
        return ConverterType.FA_TO_CE
    }
    var fa : Double { return self.temperarture }
    var ce : Double { return (temperarture - 32.0) * (5.0/9.0) }
    
}
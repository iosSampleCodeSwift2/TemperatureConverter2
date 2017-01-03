//
//  CelsiusToFahrenheit.swift
//  TemperatureConverter
//
//  Created by Daesub Kim on 2016. 10. 4..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation

class CelsiusToFahrenheit : Converter {
    
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
        return ConverterType.CE_TO_FA
    }
    var fa : Double { return ((9.0/5.0) * temperarture + 32.0) }
    var ce : Double { return self.temperarture }
    
}

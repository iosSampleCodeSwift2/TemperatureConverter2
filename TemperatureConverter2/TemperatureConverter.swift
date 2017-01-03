//
//  TemperatureConverter.swift
//  TemperatureConverter
//
//  Created by Daesub Kim on 2016. 10. 4..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation

class TemperatureConverter {

    func getUserInputDouble() -> Double {
        while true {
            if let inputString = readLine() {
                if let inputNumber = Double(inputString) {
                    return inputNumber
                } else {
                    print("Error! Please re-input as Double value.")
                }
            }
            
        }
    }
    
    func getUserInputConverterType() -> ConverterType {
        var i = 0
        let g = ConverterType.FA_TO_CE
        repeat {
            print("Please select converter type (1 or 2):")
            if let inputString = readLine() {
                if let inputNumber = Int(inputString) {
                    i = inputNumber
                    if let gg = ConverterType(rawValue: i) {
                        return gg
                    }
                }
            }
        } while i < 1 || i > 2
        return g
    }
    
    func convert(mode: ConverterType) {
        if (mode == ConverterType.FA_TO_CE) {
            print("Please input temperature (F) : ")
            let converter = FahrenheitToCelsius(temperature: getUserInputDouble())
            print(converter.description)
        } else if (mode == ConverterType.CE_TO_FA) {
            print("Please input temperature (C) : ")
            let converter = CelsiusToFahrenheit(temperature: getUserInputDouble())
            print(converter.description)
        }
    }
    
    func calculateAll() {
        
        /*for i in 1...2 {
            convert(ConverterType(rawValue: i)!) // optional chain 안 쓰고 확실하다고 가정하고 일단 !
        }
        for c in ConverterType.enumerate() {
            convert(c)
        }
        
        convertList.append(FahrenheitToCelsius(temperature: 75.5))
        convertList.append(CelsiusToFahrenheit(temperature: 25.5))
        
        for c in convertList {
            print(c)
        }*/
        
        convert(getUserInputConverterType())
        
    }
    
    
    var convertList = [Converter]()
    
}
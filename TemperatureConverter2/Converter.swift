//
//  Converter.swift
//  TemperatureConverter
//
//  Created by Daesub Kim on 2016. 10. 4..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation

protocol Converter : CustomStringConvertible { // protocol == interface 와 같은것
    
    var description : String { get }
    var type : ConverterType { get }
    var fa : Double { get }
    var ce : Double { get }
    
}
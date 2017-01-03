//
//  ConverterType.swift
//  TemperatureConverter
//
//  Created by Daesub Kim on 2016. 10. 4..
//  Copyright © 2016년 DaesubKim. All rights reserved.
//

import Foundation

enum ConverterType : Int, CustomStringConvertible { // CustomStringConvertible 은 desc를 받기 위하여..
    
    case FA_TO_CE = 1
    case CE_TO_FA = 2
    
    init(_ name: String) {
        switch name {
            
        case "FA_TO_CE", "1" : self = .FA_TO_CE
        case "CE_TO_FA", "2" : self = .CE_TO_FA
        default : self = .CE_TO_FA
            
        }
    }
    
    var description : String {
        switch self {
        case .FA_TO_CE: return "FA_TO_CE"
        case .CE_TO_FA: return "CE_TO_FA"
        }
    }
    
    static func enumerate() -> AnyGenerator<ConverterType> {
        var nextIndex = FA_TO_CE.rawValue
        return anyGenerator {
            ConverterType(rawValue: nextIndex++)
        }
    }
    
}
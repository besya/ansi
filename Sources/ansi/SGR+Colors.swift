//
//  SGR+Colors.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension SGR {
    /// Whether this SGR code is a foreground color
    public var isForegroundColor: Bool {
        (rawValue >= 30 && rawValue <= 37) ||
        (rawValue >= 90 && rawValue <= 97) ||
        rawValue == 38 ||
        rawValue == 39
    }
    
    /// Whether this SGR code is a background color
    public var isBackgroundColor: Bool {
        (rawValue >= 40 && rawValue <= 47) ||
        (rawValue >= 100 && rawValue <= 107) ||
        rawValue == 48 ||
        rawValue == 49
    }
    
    /// Whether this SGR code is a bright color
    public var isBrightColor: Bool {
        (rawValue >= 90 && rawValue <= 97) ||
        (rawValue >= 100 && rawValue <= 107)
    }
}

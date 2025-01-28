//
//  Color.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import Foundation

public enum Color: Sendable {
    case bit8(Int)
    case rgb(Int, Int, Int)

    public static let black = bit8(0)
    public static let red = bit8(1)
    public static let green = bit8(2)
    public static let yellow = bit8(3)
    public static let blue = bit8(4)
    public static let magenta = bit8(5)
    public static let cyan = bit8(6)
    public static let white = bit8(7)

    public static let brightBlack = bit8(8)
    public static let brightRed = bit8(9)
    public static let brightGreen = bit8(10)
    public static let brightYellow = bit8(11)
    public static let brightBlue = bit8(12)
    public static let brightMagenta = bit8(13)
    public static let brightCyan = bit8(14)
    public static let brightWhite = bit8(15)

    public var asArray: [Int] {
        switch self {
        case let .bit8(value):
            return [ColorMode.bit8.rawValue, value]
        case let .rgb(r, g, b):
            return [ColorMode.bit24.rawValue, r, g, b]
        }
    }
    
    public var parameterize: [String] {
        asArray.flatMap { [String($0), ASCII.semicolon.string] }.dropLast()
    }

    public static func fromHex(_ hex: String) -> Self {
        let (r, g, b) = hexToRgb(hex)
        return rgb(r, g, b)
    }
    
    public static func hexToRgb(_ hex: String) -> (Int, Int, Int) {
        var hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hex = hex.replacingOccurrences(of: "#", with: "")

        if hex.count != 6 {
            return (0, 0, 0)
        }

        var rgbValue: UInt64 = 0
        guard Scanner(string: hex).scanHexInt64(&rgbValue) else {
            return (0, 0, 0)
        }

        let r = Int((rgbValue & 0xFF0000) >> 16)
        let g = Int((rgbValue & 0x00FF00) >> 8)
        let b = Int(rgbValue & 0x0000FF)
        return (r, g, b)
    }
}

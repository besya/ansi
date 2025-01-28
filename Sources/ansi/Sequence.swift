//
//  Sequence.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public class Sequence: CustomStringConvertible {
    let parameters: [String]
    
    public init(parameters: [String]) {
        self.parameters = parameters
    }
    
    public func toArray() -> [String] { parameters }
    public func toString() -> String { parameters.joined() }
    public var array: [String] { toArray() }
    public var string: String { toString() }
    public var description: String { string }
}

//
//  EraseInLine.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class EraseInLine: ControlSequence {
    public init(_ n: Int = 0) {
        super.init(.eraseInLine, parameters: [String(n)])
    }
}

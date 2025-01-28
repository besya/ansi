//
//  CursorNextLine.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorNextLine: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorNextLine, parameters: [String(n)])
    }
}

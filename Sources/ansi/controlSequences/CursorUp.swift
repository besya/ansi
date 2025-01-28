//
//  CursorUp.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public class CursorUp: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorUp, parameters: [String(n)])
    }
}

//
//  CursorPosition.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorPosition: ControlSequence {
    public init(_ n: Int = 1, _ m: Int = 1) {
        super.init(.cursorPosition, parameters: [
            String(n), ASCII.semicolon.string, String(m)
        ])
    }
}

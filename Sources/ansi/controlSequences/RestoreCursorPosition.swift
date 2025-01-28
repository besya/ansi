//
//  RestoreCursorPosition.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class RestoreCursorPosition: ControlSequence {
    public init() {
        super.init(.restoreCursorPosition, parameters: [])
    }
}

//
//  SaveCursorPosition.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class SaveCursorPosition: ControlSequence {
    public init() {
        super.init(.saveCursorPosition, parameters: [])
    }
}

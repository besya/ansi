//
//  HideCursor.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class HideCursor: ControlSequence {
    public init() {
        super.init(.hideCursor, parameters: [])
    }
}

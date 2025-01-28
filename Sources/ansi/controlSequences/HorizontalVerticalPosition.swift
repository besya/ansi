//
//  HorizontalVerticalPosition.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class HorizontalVerticalPosition: ControlSequence {
    public init(_ row: Int = 1, _ column: Int = 1) {
        super.init(.horizontalVerticalPosition, parameters: [
            String(row),
            ASCII.semicolon.string,
            String(column)
        ])
    }
}

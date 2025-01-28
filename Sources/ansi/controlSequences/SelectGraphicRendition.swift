//
//  CursorUp.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

public class SelectGraphicRendition: ControlSequence {
    public init(_ type: SelectGraphicRenditionType, parameters: [String] = []) {
        let prefix = parameters.isEmpty ? [type.string] : [type.string, ASCII.semicolon.string]
        super.init(.selectGraphicRendition, parameters: prefix + parameters)
    }
}

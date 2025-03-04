//
//  SwiftFormatPlugin.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 4.03.25.
//

import Foundation
import PackagePlugin

@main
struct SwiftFormatPlugin: BuildToolPlugin {
  /// This entry point is called when operating on a Swift package.
  func createBuildCommands(context: PluginContext, target: Target) throws
    -> [Command]
  {
    let scriptPath = context.package
      .directoryURL
      .appending(
        path: "Plugins/SwiftFormatPlugin/swift-format-lint-script.sh"
      )
      .path

    let configurationPath = context.package
      .directoryURL
      .appending(path: ".swift-format")
      .path

    let packagePath = context.package
      .directoryURL
      .path

    return [
      .buildCommand(
        // An optional string to show in build logs and other status areas.
        displayName: "Running SwiftFormatPlugin",

        // The absolute path to the executable to be invoked.
        executable: URL(filePath: "/bin/bash"),

        // Command-line arguments to be passed to the executable.
        arguments: [
          scriptPath,
          packagePath,
          configurationPath,
        ],

        // Environment variable assignments visible to the executable.
        environment: [:],

        // Files on which the contents of output files may depend.
        // Any paths passed as arguments should typically be passed here as well.
        inputFiles: [],

        // Files to be generated or updated by the executable.
        // Any files recognizable by their extension as source files (e.g. .swift)
        // are compiled into the target for which this command was generated as if
        // in its source directory; other files are treated as resources as if explicitly
        // listed in Package.swift using .process(...).
        outputFiles: []
      )
    ]
  }
}

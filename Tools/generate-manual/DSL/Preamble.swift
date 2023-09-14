//===----------------------------------------------------------*- swift -*-===//
//
// This source file is part of the Swift Argument Parser open source project
//
// Copyright (c) 2021 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import StackOtterArgParser
import StackOtterArgParserToolInfo
import Foundation

struct Preamble: MDocComponent {
  var date: Date
  var section: Int
  var command: CommandInfoV0

  var body: MDocComponent {
    MDocMacro.Comment("Generated by swift-argument-parser")
    DocumentDate(date: date)
    MDocMacro.DocumentTitle(title: command.manualPageDocumentTitle, section: section)
    MDocMacro.OperatingSystem()
  }
}

//===----------------------------------------------------------*- swift -*-===//
//
// This source file is part of the Swift Argument Parser open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

#if os(macOS)

import XCTest
import StackOtterArgParserTestHelpers

final class CountLinesGenerateManualTests: XCTestCase {
  func testCountLines_SinglePageManual() throws {
    guard #available(macOS 12, *) else { return }
    try AssertGenerateManual(multiPage: false, command: "count-lines", expected: #"""
      .\" "Generated by swift-argument-parser"
      .Dd May 12, 1996
      .Dt COUNT-LINES 9
      .Os
      .Sh NAME
      .Nm count-lines
      .Sh SYNOPSIS
      .Nm
      .Op Ar input-file
      .Op Fl -prefix Ar prefix
      .Op Fl -verbose
      .Op Fl -help
      .Sh DESCRIPTION
      .Bl -tag -width 6n
      .It Ar input-file
      A file to count lines in. If omitted, counts the lines of stdin.
      .It Fl -prefix Ar prefix
      Only count lines with this prefix.
      .It Fl -verbose
      Include extra information in the output.
      .It Fl h , -help
      Show help information.
      .El
      .Sh AUTHORS
      The
      .Nm
      reference was written by
      .An -nosplit
      .An "Jane Appleseed" ,
      .Mt johnappleseed@apple.com ,
      and
      .An -nosplit
      .An "The Appleseeds"
      .Ao
      .Mt appleseeds@apple.com
      .Ac .
      """#)
  }
  
  func testCountLines_MultiPageManual() throws {
    guard #available(macOS 12, *) else { return }
    try AssertGenerateManual(multiPage: true, command: "count-lines", expected: #"""
      .\" "Generated by swift-argument-parser"
      .Dd May 12, 1996
      .Dt COUNT-LINES 9
      .Os
      .Sh NAME
      .Nm count-lines
      .Sh SYNOPSIS
      .Nm
      .Op Ar input-file
      .Op Fl -prefix Ar prefix
      .Op Fl -verbose
      .Op Fl -help
      .Sh DESCRIPTION
      .Bl -tag -width 6n
      .It Ar input-file
      A file to count lines in. If omitted, counts the lines of stdin.
      .It Fl -prefix Ar prefix
      Only count lines with this prefix.
      .It Fl -verbose
      Include extra information in the output.
      .It Fl h , -help
      Show help information.
      .El
      .Sh AUTHORS
      The
      .Nm
      reference was written by
      .An -nosplit
      .An "Jane Appleseed" ,
      .Mt johnappleseed@apple.com ,
      and
      .An -nosplit
      .An "The Appleseeds"
      .Ao
      .Mt appleseeds@apple.com
      .Ac .
      """#)
  }
}

#endif

//
// Console.swift
//
// Created by Jan Cássio on 06/19/2015
// Copyright (c) 2015 Jan Cássio. All rights reserved.
//

import Foundation

/**
Prints messages to console.
Console is a utillity function to help developers to log points of program using the Xcode console.

This function will not print only message, will add some useful information too like line nunber,
class and function at the message **"automagically"**

:Usage 1:
The first parameter is all you need, just pass any string

console("Hello World")

:Usage 2:
You can simply call console without argument too.

console()

- parameter message:    A message to print to console (optional).
*/


@inline(__always) public func console<T> (
  value: T,
  file: String = __FILE__,
  function: String = __FUNCTION__,
  line: Int = __LINE__
  ) -> Void {
    
    func time() -> String {
      let calendar: NSCalendar = NSCalendar.currentCalendar()
      let date: NSDate = NSDate()
      let components: NSDateComponents = calendar.components(
        [.Hour, .Minute, .Second],
        fromDate: date
      )
      
      return "\( components.hour ):\( components.minute )::\( components.second )"
    }
    
    let filename = ((file as NSString).lastPathComponent as NSString).stringByDeletingPathExtension
    
    print( "(\(time())) [ \( filename ).\(function) L:\(line) ] \(value)\n", terminator: "" )
}

/**
This is a wrapper of `console` function to use without arguments.
Just print the current file, function in scope and line number.
*/
@inline(__always) public func console(file aFile: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) -> Void {
  console("", file: aFile, function: function, line: line)
}

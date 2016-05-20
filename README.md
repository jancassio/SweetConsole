[![Twitter: @jancassio](https://img.shields.io/badge/contact-@jancassio-blue.svg?style=flat)](https://twitter.com/jancassio)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/jancassio/SweetHMAC/blob/master/LICENSE)
![Version](https://cocoapod-badges.herokuapp.com/v/SweetConsole/badge.png)
![Platforms](https://cocoapod-badges.herokuapp.com/p/SweetConsole/badge.png)

# SweetConsole
SweetConsole is a stupid simple global function for Swift to print messages in Xcode's console with some more useful information.

Yes, is very inspired in the classic `DLog` function (see more [here](http://stackoverflow.com/questions/969130/how-to-print-out-the-method-name-and-line-number-and-conditionally-disable-nslog))

## The output format:
`(hh:mm::ss) [ filename.[__FUNCTION__] L:__LINE__ ] VALUE`

## How to use?

## Install

### Cocoapods
`pod "SweetConsole"`

### Source
Simple add `Console.swift` to your project

### Import

If you choose to use **SweetConsole** with [CocoaPods](https://cocoapods.org), just import `SweetConsole` in each file you would like use `console` function:

```swift
import SweetConsole
```

Otherwise, you choose to use `Console.swift` file directly in you project, the `console` function will be available globaly in your project.

## Some usage examples

```swift
console("Hello World") // "(hh:mm::ss) [ FileName.currentMethod L:(currentLine) ] Hello World

console() // "(hh:mm::ss) [ FileName.currentMethod L:(currentLine) ]

console(SomeObject) // "(hh:mm::ss) [ FileName.currentMethod L:(currentLine) ] SomeObject.description output
```

## Advice for Swift 1.x users

To use SweetConsole properly, you have to use version 1.0, simple do a `git checkout tags/1.0` after clone SweetConsole source.

## License

Copyright (c) 2015 Jan Cassio. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

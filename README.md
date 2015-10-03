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

### Import first

#### Option 1:  Add `SweetConsole` as global framework (better choice).
At your bridge header file, add the line below:

`#import <SweetConsole/SweetConsole-Swift.h>`

#### Option 2: Import `SweetConsole` to your file:
```swift
import SweetConsole
```

## Using

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

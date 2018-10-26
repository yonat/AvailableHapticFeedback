# AvailableHapticFeedback

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AvailableHapticFeedback.svg)](https://img.shields.io/cocoapods/v/AvailableHapticFeedback.svg)  
[![Platform](https://img.shields.io/cocoapods/p/AvailableHapticFeedback.svg?style=flat)](http://cocoapods.org/pods/AvailableHapticFeedback)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Unified haptic feedback interface for all subclasses of `UIFeedbackGenerator`, with availability checks for iOS 9.

## Usage

```swift
var haptic = AvailableHapticFeedback(style: .selection)

haptic.prepare() // load taptic engine (optional)

haptic.generateFeedback() // call to generate haptic feedback

haptic.end() // unload taptic engine (optional)
```

To learn about the different haptic feedback styles, see [Apple's guidelines for feedback](https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/feedback/) or run the Example app.

## Installation

### CocoaPods:

```ruby
pod 'AvailableHapticFeedback'
```


### Manually:

Copy `Sources/AvailableHapticFeedback.swift` to your Xcode project.

## Meta

[@yonatsharon](https://twitter.com/yonatsharon)

[https://github.com/yonat/AvailableHapticFeedback](https://github.com/yonat/AvailableHapticFeedback)

[swift-image]:https://img.shields.io/badge/swift-4.2-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE.txt
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com

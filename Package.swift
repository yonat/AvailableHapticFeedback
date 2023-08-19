// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "AvailableHapticFeedback",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "AvailableHapticFeedback", targets: ["AvailableHapticFeedback"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "AvailableHapticFeedback", dependencies: [], path: "Sources", resources: [.copy("PrivacyInfo.xcprivacy")]),
    ],
    swiftLanguageVersions: [.v5]
)

// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TravelSafelyBoneshell",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "TravelSafelyBoneshell", targets: ["testProject"])
    ],
    dependencies: [
        /// Define the Mocker dependency:
        .package(url: "https://github.com/test93188/tslibXCframwork.git", from: "1.0.9")
    ],
    targets: [
        .target(name: "testProject", dependencies: []),
        /// Add it to your test target in the dependencies array:
        
    ]
)

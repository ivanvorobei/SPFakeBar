// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SPFakeBar",
    platforms: [
       .iOS(.v10)
    ],
    products: [
        .library(name: "SPFakeBar", targets: ["SPFakeBar"])
    ],
    targets: [
        .target(name: "SPFakeBar", dependencies: [], path: "Source/SPFakeBar")
    ]
)

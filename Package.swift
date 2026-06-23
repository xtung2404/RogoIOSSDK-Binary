// swift-tools-version: 5.7
//
// RogoIOSSDK - Binary Distribution

import PackageDescription

let package = Package(
    name: "RogoIOSSDK",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "RogoIOSSDK",
            targets: ["RogoIOSSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/RogoSolutions/IotCoreIOS-Binary.git", from: "0.0.12"),
    ],
    targets: [
        .binaryTarget(
            name: "RogoIOSSDKBinary",
            url: "https://github.com/xtung2404/RogoIOSSDK-Binary/releases/download/0.0.2/RogoIOSSDK-0.0.2.xcframework.zip",
            checksum: "c2f11d418e3ee4205a6ae3aa8b8eb4c41a112d73f2a99b3506ef9bf43ac0794d"
        ),
        .target(
            name: "RogoIOSSDKWrapper",
            dependencies: [
                "RogoIOSSDKBinary",
                .product(name: "IotCoreIOS", package: "IotCoreIOS-Binary"),
            ],
            path: "Sources/RogoIOSSDKWrapper"
        ),
    ]
)

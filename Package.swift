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
            url: "https://github.com/xtung2404/RogoIOSSDK-Binary/releases/download/0.0.3/RogoIOSSDK-0.0.3.xcframework.zip",
            checksum: "1315f41992333236850bb3cd32e44df4b3fd123f0a6a8c2123651e16324cfc76"
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

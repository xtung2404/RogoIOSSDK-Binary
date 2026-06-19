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
            url: "https://github.com/xtung2404/RogoIOSSDK-Binary/releases/download/0.0.1/RogoIOSSDK-0.0.1.xcframework.zip",
            checksum: "d51fc77af74b2193155a5975611d01b575b54009dea121e89ad5ec4b8c6d54eb"
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

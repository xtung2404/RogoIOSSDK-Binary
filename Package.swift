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
            url: "https://github.com/xtung2404/RogoIOSSDK-Binary/releases/download/0.0.4/RogoIOSSDK-0.0.4.xcframework.zip",
            checksum: "998f2fb4d666da19bc876ac0d6f21fe17b6adfa2981a25eed237e6d4b08aa6f5"
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

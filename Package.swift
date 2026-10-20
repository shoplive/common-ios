// swift-tools-version: 5.9
// ShopliveSDKCommon — Shoplive iOS common module (authentication · user settings · shared API).
//
// Shared by the Shoplive live SDK 1.x, Shortform and Shortform Editor packages, which all
// depend on this package so that SwiftPM resolves a single copy of the module.

import PackageDescription

let package = Package(
    name: "ShopliveSDKCommon",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // ShopliveAPI ships with ShopliveSDKCommon (re-exported), not as a product of its own.
        .library(
            name: "ShopliveSDKCommon",
            targets: ["ShopliveSDKCommon", "ShopliveAPI"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShopliveSDKCommon",
            path: "./Frameworks/ShopliveSDKCommon.xcframework"
        ),
        .binaryTarget(
            name: "ShopliveAPI",
            path: "./Frameworks/ShopliveAPI.xcframework"
        )
    ]
)

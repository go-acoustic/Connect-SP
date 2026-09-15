
// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2026 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using Connect release version, if you need debug version use https://github.com/go-acoustic/ConnectDebug-SP")
let package = Package(
    name: "Connect",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Connect",
            targets: ["Connect", "Tealeaf", "EOCore"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Connect",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/Connect_XCFramework_Release.zip",
            checksum: "07e27f8c4d6df380064bdee3b56520ba87fb91ff0581d978684004eb407ab519"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/Tealeaf_XCFramework_Release.zip",
            checksum: "356f492ec44db667556073615bc2f9ed0007c869cfc26ee165de68f680c5c68d"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/EOCore_XCFramework_Release.zip",
            checksum: "ed53061c2d5a5f3a3dda1a4a3a661386c37ac14b8bef10db82b92eb8e802ba8a"),
    ]
)

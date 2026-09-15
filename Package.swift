
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
            checksum: "493ed4fe0c27258ed4e5468db4679879d20b9f9e1c15104b5c48688ff53aef04"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/Tealeaf_XCFramework_Release.zip",
            checksum: "e4003956b3baea2df13dc64f37b8b279dae24bb7aeac30ff32036076ac912fc4"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/EOCore_XCFramework_Release.zip",
            checksum: "7aab43a96a6ad7f6e810e2e38ccc1467b2c4c7e5e712266626d0fb1527565d0b"),
    ]
)

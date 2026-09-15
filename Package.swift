
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
            checksum: "3fc6f5ceedc1da783fad99b0ff1af4110353c0a0c65066ec847d4b8432534ff7"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/Tealeaf_XCFramework_Release.zip",
            checksum: "e43e61129451a98f503c13c36507d957a733f6512dec27ead39209e2a75b4533"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/EOCore_XCFramework_Release.zip",
            checksum: "1fafde87b4863b2b51a176f74ab3148b437577a174d4e5a6d67271345ad8e8d7"),
    ]
)

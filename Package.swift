
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
            checksum: "87932cb3099361a95062a82b15e840bcd2068c8a4237a987c99e25c09f9299c2"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/Tealeaf_XCFramework_Release.zip",
            checksum: "e6410a2e40f6923bd580631b3509c0255407ddaaa4217f2548f4f9a04f08802f"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.26/EOCore_XCFramework_Release.zip",
            checksum: "8850b2b69fd54193122e1feb39a376823cdf89810ba5167dcec9335d8197dbc5"),
    ]
)

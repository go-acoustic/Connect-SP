
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
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Connect",
            targets: ["Connect", "Tealeaf", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Connect",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.0.8/Connect_XCFramework_Release.zip",
            checksum: "f07605164415b0160cd2b5804e75402299826ef80e094cf5af1afefcbdc0e6f3"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Tealeaf/releases/download/10.6.337/Tealeaf_XCFramework_Release.zip",
            checksum: "57072e7f2eb3931be48f5c214db3b82b7144320fb4c17d61309b15c356215042"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/EOCore/releases/download/2.3.337/EOCore_XCFramework_Release.zip",
            checksum: "fad456e79af9a69400663bdcf2e5a2f03d57a7b9a141d85ee378d474954f69bf"),
    ]
)

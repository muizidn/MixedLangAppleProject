// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainModule",
    products: [
        .executable(
            name: "MainModule",
            targets: ["MainModule", "ObjCModule", "SwiftModule"]
        ),
        .executable(
            name: "MainObjcModule",
            targets: ["MainObjcModule", "ObjCModule"]
        ),
        .library(
            name: "ObjCModule",
            targets: ["ObjCModule"]
        ),
        .library(
            name: "SwiftModule",
            targets: ["SwiftModule", "ObjCModule"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CPPModule",
            dependencies: [
            ],
            path: "Sources/CPP"
        ),
        .target(
            name: "ObjCModule",
            dependencies: [
                "CPPModule"
            ],
            path: "Sources/ObjC"
        ),
        .target(
            name: "SwiftModule",
            dependencies: [
                "ObjCModule",
            ],
            path: "Sources/Swift"
        ),
        .executableTarget(
            name: "MainModule",
            dependencies: [
                "ObjCModule",
                "SwiftModule",
            ],
            path: "Sources/Exec"
        ),
        .executableTarget(
            name: "MainObjcModule",
            dependencies: [
                "ObjCModule"
            ],
            path: "Sources/ExecObjc"
        )
    ]
)
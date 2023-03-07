// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DIDCommxSwift",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "DIDCommxSwift",
            targets: ["DIDCommxSwift"]
        ),
    ],
    targets: [
        .target(
            name: "DIDCommxSwift",
            dependencies: ["DIDCommx"],
            path: "DIDCommxSwift/Sources/Swift"
        ),
        .target(
            name: "DIDCommx",
            dependencies: ["LibDidComm"],
            path: "DIDCommxSwift/Sources/C"),
        .binaryTarget(
            name: "LibDidComm",
            path: "./LibDidComm.xcframework.zip"
        )
    ]
)

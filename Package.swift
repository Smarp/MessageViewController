// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MessageViewController",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // The library that this package offers to other packages
        .library(
            name: "MessageViewController",
            targets: ["MessageViewController"]),
    ],
    dependencies: [
        // Add external dependencies here if the project requires them
    ],
    targets: [
        // The target containing the source code
        .target(
            name: "MessageViewController",
            path: "MessageViewController",
            exclude: ["Info.plist"]
        )
    ]
)
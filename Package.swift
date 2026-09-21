// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TDLiveness",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "TDLiveness",
            targets: ["TDLiveness", "TDLivenessResources"]
        )
    ],
    targets: [
        .target(
            name: "TDLivenessResources",
            path: ".",
            exclude: [
                ".git",
                ".gitignore",
                ".swiftpm",
                "Frameworks/TDLiveness.xcframework",
                "LICENSE",
                "README.md"
            ],
            resources: [
                .copy("Frameworks/TDLivenessModels.bundle")
            ]
        ),
        .binaryTarget(
            name: "TDLiveness",
            path: "Frameworks/TDLiveness.xcframework"
        )
    ]
)

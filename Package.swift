// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TDLiveness",
    platforms: [
        .iOS(.v12)
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
                "Artifacts/TDLiveness.xcframework",
                "LICENSE",
                "README.md"
            ],
            sources: [
                "Sources/TDLivenessResources/TDLivenessResources.swift"
            ],
            resources: [
                .copy("Artifacts/TDLivenessModels.bundle")
            ]
        ),
        .binaryTarget(
            name: "TDLiveness",
            path: "Artifacts/TDLiveness.xcframework"
        )
    ]
)

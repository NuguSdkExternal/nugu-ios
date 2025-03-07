// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nugu-ios",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "nugu-ios",
            targets: ["NuguClientKitExternal", "NuguAgentsExternal", "NuguUtils", "NuguServiceKit", "NuguLoginKit", "NuguUIKitExternal", "KeenSenseExternal", "NuguCoreExternal"]
        )
    ],
    dependencies: [
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift", from: "6.0.0"),
        .package(name: "NattyLog", url: "https://github.com/nugu-developers/natty-log-ios", from: "1.2.2"),
	.package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios", .upToNextMajor(from: "4.0.0")) // 4.0.0 ~ 4.X.X
    ],
    targets: [
        .target(
            name: "NuguUtils",
            dependencies: ["RxSwift"],
            path: "NuguUtils/",
            exclude: ["Info.plist"]
        ),
        .target(
            name: "NuguObjcUtils",
            dependencies: [],
            path: "NuguObjcUtils/",
            exclude: ["Info.plist"]
        ),
        .binaryTarget(
            name: "TycheCommon",
            path: "TycheCommon.xcframework"
        ),
        .binaryTarget(
            name: "TycheEpd",
            path: "TycheEpd.xcframework"
        ),
        .binaryTarget(
            name: "TycheWakeup",
            path: "TycheWakeup.xcframework"
        ),
        .binaryTarget(
            name: "TycheSpeex",
            path: "TycheSpeex.xcframework"
        ),
        .target(
            name: "TycheSDK",
            dependencies: ["TycheCommon", "TycheEpd", "TycheWakeup", "TycheSpeex"],
            path: "TycheSDK/",
            exclude: ["Info.plist"],
            publicHeadersPath: "include/"
        ),
        .target(
            name: "JadeMarbleExternal",
            dependencies: ["NattyLog", "TycheSDK", "TycheCommon", "TycheEpd", "TycheSpeex"],
            path: "JadeMarble/",
            exclude: ["Info.plist"],
            resources: [.process("Resources/skt_epd_model.raw")],
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .target(
            name: "KeenSenseExternal",
            dependencies: ["NattyLog", "NuguUtils", "TycheSDK"],
            path: "KeenSense/",
            exclude: ["Info.plist"],
            resources: [
                .process("Resources/skt_trigger_search_aria.raw"),
                .process("Resources/skt_trigger_search_tinkerbell.raw"),
                .process("Resources/skt_trigger_am_aria.raw"),
                .process("Resources/skt_trigger_am_tinkerbell.raw")
            ],
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .target(
            name: "NuguCoreExternal",
            dependencies: ["NuguUtils", "NattyLog"],
            path: "NuguCore/",
            exclude: ["Info.plist", "README.md"]
        ),
        .binaryTarget(
            name: "OpusCodec",
            path: "OpusCodec.xcframework"
        ),
        .target(
            name: "OpusSDK",
            dependencies: ["OpusCodec"],
            path: "OpusSDK/",
            exclude: ["Info.plist"],
            publicHeadersPath: "include/"
        ),
        .target(
            name: "SilverTray",
            dependencies: ["NuguUtils", "NuguObjcUtils", "OpusSDK"],
            path: "SilverTray/",
            exclude: ["Info.plist"],
            publicHeadersPath: "inlcude/"
        ),
        .target(
            name: "NuguAgentsExternal",
            dependencies: ["NuguUtils", "NuguCoreExternal", "JadeMarbleExternal", "KeenSenseExternal", "RxSwift", "NattyLog", "SilverTray"],
            path: "NuguAgents/",
            exclude: ["Info.plist", "README.md"]
        ),
        .target(
            name: "NuguServiceKit",
            dependencies: ["NattyLog", "NuguUtils"],
            path: "NuguServiceKit/",
            exclude: ["Info.plist", "README.md"]
        ),
        .target(
            name: "NuguUIKitExternal",
            dependencies: ["NattyLog", "NuguAgentsExternal", "NuguUtils", "Lottie"],
            path: "NuguUIKit/",
            exclude: ["Info.plist", "README.md"],
            resources: [
                .process("Resources/animations/07_speaking.json"),
                .process("Resources/animations/06_transition.json"),
                .process("Resources/animations/05_processing.json"),
                .process("Resources/animations/04_active.json"),
                .process("Resources/animations/03_transition.json"),
                .process("Resources/animations/02_passive.json"),
                .process("Resources/animations/01_intro.json"),
                .process("Resources/Assets.xcassets")
            ]
        ),
        .target(
            name: "NuguLoginKit",
            dependencies: ["NuguUtils", "NattyLog"],
            path: "NuguLoginKit/",
            exclude: ["Info.plist", "README.md"]
        ),
        .target(
            name: "NuguClientKitExternal",
            dependencies: ["NuguAgentsExternal", "NattyLog", "RxSwift", "NuguUtils", "NuguServiceKit", "NuguLoginKit", "NuguUIKitExternal", "KeenSenseExternal", "NuguCoreExternal"],
            path: "NuguClientKit/",
            exclude: ["Info.plist", "README.md"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)

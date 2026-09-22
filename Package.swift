// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-YSO-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "YSOAdapter", targets: ["YSOAdapter"]),
  ],
  dependencies: [
    .package(url: "https://bitbucket.org/ysocorp/ysonetwork-ios-sdk.git", exact: "1.2.1"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "YSOAdapter",
      dependencies: [
        "YSOAdapterSDK",
        .product(name: "YsoNetwork", package: "ysonetwork-ios-sdk"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "YSOAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/yso-adapter/5.2.0/ISYSOAdapter5.2.0.zip",
      checksum: "99844da6bfaafd507c4b2140478e124a919c6dd962c9ee4419a8e1913c662418"
    )
  ]
)

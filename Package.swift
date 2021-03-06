import PackageDescription

let package = Package(
  name: "SourceKitten",
  targets: [
    Target(name: "SourceKittenFramework"),
    Target(name: "sourcekitten",
      dependencies: [.Target(name: "SourceKittenFramework")]),
  ],
  dependencies: [
    .Package(url: "https://github.com/Carthage/Commandant.git", Version(0, 11, 1)),
    .Package(url: "https://github.com/drmohundro/SWXMLHash.git", Version(3, 0, 2)),
    .Package(url: "https://github.com/behrang/YamlSwift.git", Version(2, 0, 1)),
    .Package(url: "https://github.com/norio-nomura/Clang_C.git", majorVersion: 1),
    .Package(url: "https://github.com/norio-nomura/SourceKit.git", majorVersion: 1),
  ],
  exclude: ["Tests/SourceKittenFrameworkTests/Fixtures"]
)

# ShopliveSDKCommon (common-ios)

Shoplive iOS common module — authentication (access key), user settings and shared API.
Used by the Shoplive live SDK 1.x, Shortform and Shortform Editor.

| | |
|---|---|
| Minimum iOS | 15.0 (from 1.9.0) |
| Modules | `ShopliveSDKCommon` (+ `ShopliveAPI`, re-exported) |

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/shoplive/common-ios", exact: "1.9.0")
],
targets: [
    .target(name: "YourApp", dependencies: [
        .product(name: "ShopliveSDKCommon", package: "common-ios")
    ])
]
```

The live SDK 1.x, Shortform and Shortform Editor packages declare this package as a dependency,
so it resolves with them. Declare it explicitly when your app imports `ShopliveSDKCommon`.

### CocoaPods

```ruby
source 'https://cdn.cocoapods.org/'
source 'https://github.com/shoplive/pod-specs.git'

pod 'ShopliveSDKCommon', '1.9.0'
```

## Compatibility

Minimum versions that work with `common-ios` 1.9.0:

| Package | Swift Package Manager | CocoaPods |
|---|---|---|
| Live SDK 1.x (`shoplive-sdk-ios`) | 1.9.1 or later | 1.9.0 or later |
| Live SDK 3.x (`shoplive-sdk-ios`) | 3.0.3 or later | 3.0.3 or later |
| Shortform (`shortform-ios`) | 1.9.1 or later | 1.9.1 or later |
| Shortform Editor (`shortform-editor-ios`) | 1.9.1 or later | 1.9.1 or later |

With Swift Package Manager, live SDK 1.x 1.9.1 and later depend on this package, so a single
copy of `ShopliveSDKCommon` is resolved alongside Shortform and Shortform Editor.
Pin exact versions of each package.

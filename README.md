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

| Your app | Resolved packages |
|---|---|
| Live SDK 1.x + Shortform | `shoplive-sdk-ios` 1.x · `shortform-ios` · `common-ios` — one shared Common |
| Live SDK 3.x + Shortform | `shoplive-sdk-ios` 3.x · `shortform-ios` · `common-ios` |

Pin an exact version and keep Common, Shortform and Shortform Editor on the same version line.

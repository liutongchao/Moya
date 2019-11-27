// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Moya",
    products: [
        .library(name: "Moya", targets: ["Moya"]),
        .library(name: "RxMoya", targets: ["RxMoya"])
    ],
   targets: [
         .target(
            name: "Moya",
            dependencies: [
                "Alamofire",
                "Result"]),
        .target(
            name: "RxMoya",
            dependencies: [
                "Moya",
                "RxSwift"])
    ]
)

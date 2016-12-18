import PackageDescription

let package = Package(
    name: "KituraHello",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 0)
    ],
    exclude: ["Makefile", "Kitura-Build"]
)

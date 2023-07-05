// swift-tools-version:5.5
import PackageDescription

let package = Package(
	name: "AusweisApp2SDKWrapper",
	products: [
		.library(
			name: "AusweisApp2SDKWrapper",
			targets: ["AusweisApp2Dependency", "AusweisApp2SDKWrapper"]
		)
	],
	dependencies: [
		.package(
			name: "AusweisApp2",
			url: "https://github.com/Governikus/AusweisApp2-SDK-iOS",
			from: "1.26.4"
		)
	],
	targets: [
		.target(
			name: "AusweisApp2Dependency", // Dummy target, so we can depend on the AusweisApp2, as binaryTarget can't.
			dependencies: ["AusweisApp2"]
		),
		.binaryTarget(
			name: "AusweisApp2SDKWrapper",
			path: "AusweisApp2SDKWrapper.xcframework"
		)
	]
)

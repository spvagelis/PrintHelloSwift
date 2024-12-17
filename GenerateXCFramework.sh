# 1
xcodebuild archive \
-scheme PrintHelloSwift \
-configuration Release \
-sdk iphoneos \
-archivePath archives/ios_devices.xcarchive \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
SKIP_INSTALL=NO \

# 2
xcodebuild archive \
-scheme PrintHelloSwift \
-configuration Debug \
-sdk iphonesimulator \
-archivePath archives/ios_simulators.xcarchive \
BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
SKIP_INSTALL=NO \

# 3
xcodebuild \
-create-xcframework \
-framework archives/ios_devices.xcarchive/Products/Library/Frameworks/PrintHelloSwift.framework \
-framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/PrintHelloSwift.framework \
-output PrintHelloSwift.xcframework

## Introduction

This repo contains same prebuilt binaries (in Git LFS) and Swift code as pod `TrustWalletCore`, for people who want to install wallet core with Carthage.

## Usage

Add this line to your Cartfile:

`github "hewigovens/wallet-core-carthage" "master"`

See [WalletCoreExample](https://github.com/hewigovens/WalletCoreExample/tree/master/cartfile) for more details.

## Update

git clone https://github.com/binance-chain/wallet-core.git
cd wallet-core
./tools/ios-release
mv TrustWalletCore-iOS-0.12.28.zip ../wallet-core-carthage
unzip TrustWalletCore-iOS-0.12.28.zip -d wallet-core
carthage update --platform iOS
xcodegen && xcodebuild

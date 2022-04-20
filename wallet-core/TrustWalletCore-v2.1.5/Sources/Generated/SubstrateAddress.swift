// Copyright © 2017-2020 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class SubstrateAddress: Address {

    public static func == (lhs: SubstrateAddress, rhs: SubstrateAddress) -> Bool {
        return TWSubstrateAddressEqual(lhs.rawValue, rhs.rawValue)
    }

    public static func isValidString(string: String, network: Int32) -> Bool {
        let stringString = TWStringCreateWithNSString(string)
        defer {
            TWStringDelete(stringString)
        }
        return TWSubstrateAddressIsValidString(stringString, network)
    }

    public var description: String {
        return TWStringNSString(TWSubstrateAddressDescription(rawValue))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }

    public init?(string: String, network: Int32) {
        let stringString = TWStringCreateWithNSString(string)
        defer {
            TWStringDelete(stringString)
        }
        guard let rawValue = TWSubstrateAddressCreateWithString(stringString, network) else {
            return nil
        }
        self.rawValue = rawValue
    }

    public init(publicKey: PublicKey, network: Int32) {
        rawValue = TWSubstrateAddressCreateWithPublicKey(publicKey.rawValue, network)
    }

    deinit {
        TWSubstrateAddressDelete(rawValue)
    }

}

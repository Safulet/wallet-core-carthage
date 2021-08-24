// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class PolkadotSigner {

    public static func message(data: TW_Polkadot_Proto_SigningInput) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        return TWDataNSData(TWPolkadotSignerMessage(dataData))
    }

    public static func transaction(data: TW_Polkadot_Proto_SigningInput, publicKey: Data, signature: Data) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        let publicKeyData = TWDataCreateWithNSData(publicKey)
        defer {
            TWDataDelete(publicKeyData)
        }
        let signatureData = TWDataCreateWithNSData(signature)
        defer {
            TWDataDelete(signatureData)
        }
        return TWDataNSData(TWPolkadotSignerTransaction(dataData, publicKeyData, signatureData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}

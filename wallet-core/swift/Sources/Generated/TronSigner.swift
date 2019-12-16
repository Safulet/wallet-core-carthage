// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class TronSigner {

    public static func sign(input: TW_Tron_Proto_SigningInput) -> TW_Tron_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWTronSignerSign(inputData))
        return try! TW_Tron_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(input: TW_Tron_Proto_SigningInput) -> Data {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        return TWDataNSData(TWTronSignerMessage(inputData))
    }

    public static func transaction(data: TW_Tron_Proto_SigningInput) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        return TWDataNSData(TWTronSignerTransaction(dataData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}

// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class NEOSigner {

    public static func planTransaction(input: TW_NEO_Proto_SigningInput) -> TW_NEO_Proto_TransactionPlan {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWNEOSignerPlanTransaction(inputData))
        return try! TW_NEO_Proto_TransactionPlan(serializedData: resultData)
    }

    public static func sign(input: TW_NEO_Proto_SigningInput, plan: TW_NEO_Proto_TransactionPlan) -> TW_NEO_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let planData = TWDataCreateWithNSData(try! plan.serializedData())
        defer {
            TWDataDelete(planData)
        }
        let resultData = TWDataNSData(TWNEOSignerSign(inputData, planData))
        return try! TW_NEO_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(data: TW_NEO_Proto_SigningInput) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        return TWDataNSData(TWNEOSignerMessage(dataData))
    }

    public static func transaction(data: TW_NEO_Proto_SigningInput, publicKey: Data, signature: Data) -> Data {
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
        return TWDataNSData(TWNEOSignerTransaction(dataData, publicKeyData, signatureData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}

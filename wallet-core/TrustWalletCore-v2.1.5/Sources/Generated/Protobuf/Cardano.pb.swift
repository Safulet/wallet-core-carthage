// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Cardano.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct TW_Cardano_Proto_OutPoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var txHash: Data = Data()

  public var outputIndex: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Cardano_Proto_TokenAmount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var policyID: String = String()

  public var assetName: String = String()

  /// 256-bit number
  public var amount: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Cardano_Proto_TxInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var outPoint: TW_Cardano_Proto_OutPoint {
    get {return _outPoint ?? TW_Cardano_Proto_OutPoint()}
    set {_outPoint = newValue}
  }
  /// Returns true if `outPoint` has been explicitly set.
  public var hasOutPoint: Bool {return self._outPoint != nil}
  /// Clears the value of `outPoint`. Subsequent reads from it will return its default value.
  public mutating func clearOutPoint() {self._outPoint = nil}

  public var address: String = String()

  /// ADA amount
  public var amount: UInt64 = 0

  /// optional token amounts
  public var tokenAmount: [TW_Cardano_Proto_TokenAmount] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _outPoint: TW_Cardano_Proto_OutPoint? = nil
}

public struct TW_Cardano_Proto_TxOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var address: String = String()

  /// ADA amount
  public var amount: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Cardano_Proto_Transfer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Destination address as string
  public var toAddress: String = String()

  /// Change address
  public var changeAddress: String = String()

  /// ADA amount to transfer
  public var amount: UInt64 = 0

  /// Set if max amount is requested (max possible from UTXOs/fee; amount is disregarded in this case)
  public var useMaxAmount: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct TW_Cardano_Proto_TransactionPlan {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: UInt64 = 0

  public var availableAmount: UInt64 = 0

  public var fee: UInt64 = 0

  public var change: UInt64 = 0

  public var utxos: [TW_Cardano_Proto_TxInput] = []

  public var error: TW_Common_Proto_SigningError = .ok

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction
public struct TW_Cardano_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var utxos: [TW_Cardano_Proto_TxInput] = []

  /// Available private keys (double extended keys); every input UTXO adress should be covered
  public var privateKey: [Data] = []

  /// Later this can be made oneof if more message types are supported
  public var transferMessage: TW_Cardano_Proto_Transfer {
    get {return _transferMessage ?? TW_Cardano_Proto_Transfer()}
    set {_transferMessage = newValue}
  }
  /// Returns true if `transferMessage` has been explicitly set.
  public var hasTransferMessage: Bool {return self._transferMessage != nil}
  /// Clears the value of `transferMessage`. Subsequent reads from it will return its default value.
  public mutating func clearTransferMessage() {self._transferMessage = nil}

  public var ttl: UInt64 = 0

  /// Optional plan
  public var plan: TW_Cardano_Proto_TransactionPlan {
    get {return _plan ?? TW_Cardano_Proto_TransactionPlan()}
    set {_plan = newValue}
  }
  /// Returns true if `plan` has been explicitly set.
  public var hasPlan: Bool {return self._plan != nil}
  /// Clears the value of `plan`. Subsequent reads from it will return its default value.
  public mutating func clearPlan() {self._plan = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _transferMessage: TW_Cardano_Proto_Transfer? = nil
  fileprivate var _plan: TW_Cardano_Proto_TransactionPlan? = nil
}

/// Transaction signing output
public struct TW_Cardano_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var encoded: Data = Data()

  /// TxID, derived from transaction data, also needed for submission
  public var txID: Data = Data()

  /// Optional error
  public var error: TW_Common_Proto_SigningError = .ok

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Cardano.Proto"

extension TW_Cardano_Proto_OutPoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OutPoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_hash"),
    2: .standard(proto: "output_index"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.txHash) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.outputIndex) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.txHash, fieldNumber: 1)
    }
    if self.outputIndex != 0 {
      try visitor.visitSingularUInt64Field(value: self.outputIndex, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_OutPoint, rhs: TW_Cardano_Proto_OutPoint) -> Bool {
    if lhs.txHash != rhs.txHash {return false}
    if lhs.outputIndex != rhs.outputIndex {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_TokenAmount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TokenAmount"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "policy_id"),
    2: .standard(proto: "asset_name"),
    3: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.policyID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.assetName) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.policyID.isEmpty {
      try visitor.visitSingularStringField(value: self.policyID, fieldNumber: 1)
    }
    if !self.assetName.isEmpty {
      try visitor.visitSingularStringField(value: self.assetName, fieldNumber: 2)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularBytesField(value: self.amount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_TokenAmount, rhs: TW_Cardano_Proto_TokenAmount) -> Bool {
    if lhs.policyID != rhs.policyID {return false}
    if lhs.assetName != rhs.assetName {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_TxInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TxInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "out_point"),
    2: .same(proto: "address"),
    3: .same(proto: "amount"),
    4: .standard(proto: "token_amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._outPoint) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.tokenAmount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._outPoint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 3)
    }
    if !self.tokenAmount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tokenAmount, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_TxInput, rhs: TW_Cardano_Proto_TxInput) -> Bool {
    if lhs._outPoint != rhs._outPoint {return false}
    if lhs.address != rhs.address {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.tokenAmount != rhs.tokenAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_TxOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TxOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_TxOutput, rhs: TW_Cardano_Proto_TxOutput) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_Transfer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Transfer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "to_address"),
    2: .standard(proto: "change_address"),
    3: .same(proto: "amount"),
    4: .standard(proto: "use_max_amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.toAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.changeAddress) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.useMaxAmount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.toAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.toAddress, fieldNumber: 1)
    }
    if !self.changeAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.changeAddress, fieldNumber: 2)
    }
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 3)
    }
    if self.useMaxAmount != false {
      try visitor.visitSingularBoolField(value: self.useMaxAmount, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_Transfer, rhs: TW_Cardano_Proto_Transfer) -> Bool {
    if lhs.toAddress != rhs.toAddress {return false}
    if lhs.changeAddress != rhs.changeAddress {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.useMaxAmount != rhs.useMaxAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_TransactionPlan: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransactionPlan"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .standard(proto: "available_amount"),
    3: .same(proto: "fee"),
    4: .same(proto: "change"),
    5: .same(proto: "utxos"),
    6: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.amount) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.availableAmount) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.fee) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.change) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.utxos) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.error) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularUInt64Field(value: self.amount, fieldNumber: 1)
    }
    if self.availableAmount != 0 {
      try visitor.visitSingularUInt64Field(value: self.availableAmount, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularUInt64Field(value: self.fee, fieldNumber: 3)
    }
    if self.change != 0 {
      try visitor.visitSingularUInt64Field(value: self.change, fieldNumber: 4)
    }
    if !self.utxos.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.utxos, fieldNumber: 5)
    }
    if self.error != .ok {
      try visitor.visitSingularEnumField(value: self.error, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_TransactionPlan, rhs: TW_Cardano_Proto_TransactionPlan) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.availableAmount != rhs.availableAmount {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.change != rhs.change {return false}
    if lhs.utxos != rhs.utxos {return false}
    if lhs.error != rhs.error {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "utxos"),
    2: .standard(proto: "private_key"),
    3: .standard(proto: "transfer_message"),
    4: .same(proto: "ttl"),
    5: .same(proto: "plan"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.utxos) }()
      case 2: try { try decoder.decodeRepeatedBytesField(value: &self.privateKey) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._transferMessage) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.ttl) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._plan) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.utxos.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.utxos, fieldNumber: 1)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.privateKey, fieldNumber: 2)
    }
    try { if let v = self._transferMessage {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.ttl != 0 {
      try visitor.visitSingularUInt64Field(value: self.ttl, fieldNumber: 4)
    }
    try { if let v = self._plan {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_SigningInput, rhs: TW_Cardano_Proto_SigningInput) -> Bool {
    if lhs.utxos != rhs.utxos {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs._transferMessage != rhs._transferMessage {return false}
    if lhs.ttl != rhs.ttl {return false}
    if lhs._plan != rhs._plan {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Cardano_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
    2: .standard(proto: "tx_id"),
    3: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.encoded) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.txID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.error) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularBytesField(value: self.encoded, fieldNumber: 1)
    }
    if !self.txID.isEmpty {
      try visitor.visitSingularBytesField(value: self.txID, fieldNumber: 2)
    }
    if self.error != .ok {
      try visitor.visitSingularEnumField(value: self.error, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Cardano_Proto_SigningOutput, rhs: TW_Cardano_Proto_SigningOutput) -> Bool {
    if lhs.encoded != rhs.encoded {return false}
    if lhs.txID != rhs.txID {return false}
    if lhs.error != rhs.error {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
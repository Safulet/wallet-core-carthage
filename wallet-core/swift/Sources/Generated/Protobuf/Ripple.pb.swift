// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Ripple.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Input data necessary to create a signed transaction.
public struct TW_Ripple_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var fee: Int64 = 0

  public var sequence: Int32 = 0

  public var lastLedgerSequence: Int32 = 0

  public var account: String = String()

  public var destination: String = String()

  public var destinationTag: Int64 = 0

  public var flags: Int64 = 0

  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  /// only used by tss chain-integration
  public var publicKey: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Transaction signing output.
public struct TW_Ripple_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var encoded: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Ripple.Proto"

extension TW_Ripple_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "fee"),
    3: .same(proto: "sequence"),
    4: .standard(proto: "last_ledger_sequence"),
    5: .same(proto: "account"),
    6: .same(proto: "destination"),
    7: .standard(proto: "destination_tag"),
    8: .same(proto: "flags"),
    9: .standard(proto: "private_key"),
    10: .standard(proto: "public_key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularInt64Field(value: &self.fee)
      case 3: try decoder.decodeSingularInt32Field(value: &self.sequence)
      case 4: try decoder.decodeSingularInt32Field(value: &self.lastLedgerSequence)
      case 5: try decoder.decodeSingularStringField(value: &self.account)
      case 6: try decoder.decodeSingularStringField(value: &self.destination)
      case 7: try decoder.decodeSingularInt64Field(value: &self.destinationTag)
      case 8: try decoder.decodeSingularInt64Field(value: &self.flags)
      case 9: try decoder.decodeSingularBytesField(value: &self.privateKey)
      case 10: try decoder.decodeSingularBytesField(value: &self.publicKey)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 2)
    }
    if self.sequence != 0 {
      try visitor.visitSingularInt32Field(value: self.sequence, fieldNumber: 3)
    }
    if self.lastLedgerSequence != 0 {
      try visitor.visitSingularInt32Field(value: self.lastLedgerSequence, fieldNumber: 4)
    }
    if !self.account.isEmpty {
      try visitor.visitSingularStringField(value: self.account, fieldNumber: 5)
    }
    if !self.destination.isEmpty {
      try visitor.visitSingularStringField(value: self.destination, fieldNumber: 6)
    }
    if self.destinationTag != 0 {
      try visitor.visitSingularInt64Field(value: self.destinationTag, fieldNumber: 7)
    }
    if self.flags != 0 {
      try visitor.visitSingularInt64Field(value: self.flags, fieldNumber: 8)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 9)
    }
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Ripple_Proto_SigningInput, rhs: TW_Ripple_Proto_SigningInput) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.sequence != rhs.sequence {return false}
    if lhs.lastLedgerSequence != rhs.lastLedgerSequence {return false}
    if lhs.account != rhs.account {return false}
    if lhs.destination != rhs.destination {return false}
    if lhs.destinationTag != rhs.destinationTag {return false}
    if lhs.flags != rhs.flags {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.publicKey != rhs.publicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Ripple_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "encoded"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.encoded)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encoded.isEmpty {
      try visitor.visitSingularBytesField(value: self.encoded, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Ripple_Proto_SigningOutput, rhs: TW_Ripple_Proto_SigningOutput) -> Bool {
    if lhs.encoded != rhs.encoded {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

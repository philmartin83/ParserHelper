//
//  PMParserHelper.swift
//
//  Created by Phil Martin on 15/02/2019.
//  Copyright © 2019 Phil Martin. All rights reserved.
//

import Foundation


// MARK: -
// MARK: String

func castToString(_ obj: Any?) -> String {
    return obj as? String ?? ""
}

func castToStringOrNil(_ obj: Any?) -> String? {
    return obj as? String
}

// MARK: -
// MARK: String array

func castToStringArray(_ obj: Any?) -> [String] {
    return obj as? [String] ?? []
}

func castToStringArrayOrNil(_ obj: Any?) -> [String]? {
    return obj as? [String]
}

// MARK: -
// MARK: Int

func castToInt(_ obj: Any?) -> Int {
    return obj as? Int ?? 0
}

func castToIntOrNil(_ obj: Any?) -> Int? {
    return obj as? Int
}

// MARK: -
// MARK: Double

func castToDouble(_ obj: Any?) -> Double {
    return obj as? Double ?? 0.0
}

func castToDoubleOrNil(_ obj: Any?) -> Double? {
    return obj as? Double
}

// MARK: -
// MARK: Bool

func castToBool(_ obj: Any?) -> Bool {
    return obj as? Bool ?? false
}

func castToBoolOrNil(_ obj: Any?) -> Bool? {
    return obj as? Bool
}

// MARK: -
// MARK: Int64

func castToInt64(_ obj: Any?) -> Int64 {
    return castToNSNumberOrNil(obj)?.int64Value ?? 0
}

func castToInt64OrNil(_ obj: Any?) -> Int64? {
    return castToNSNumberOrNil(obj)?.int64Value
}

// MARK: -
// MARK: Int16

func castToInt16(_ obj: Any?) -> Int16 {
    return castToNSNumberOrNil(obj)?.int16Value ?? 0
}

func castToInt16OrNil(_ obj: Any?) -> Int16? {
    return castToNSNumberOrNil(obj)?.int16Value
}

// MARK: -
// MARK: NSNumber

func castToNSNumberOrNil(_ obj: Any?) -> NSNumber? {
    return obj as? NSNumber
}

// MARK: -
// MARK: NSDictionary

func castToNSDictionary(_ obj: Any?) -> NSDictionary {
    return obj as? NSDictionary ?? NSDictionary()
}

func castToNSDictionary(_ obj: Any?, process: (_ dictionary: NSDictionary) throws -> Void) rethrows {
    if let dict = castToNSDictionaryOrNil(obj) {
        try process(dict)
    }
}

func castToNSDictionaryOrNil(_ obj: Any?) -> NSDictionary? {
    return obj as? NSDictionary
}

// MARK: -
// MARK: NSDictionary array

func castToNSDictionaryArray(_ obj: Any?) -> [NSDictionary] {
    return obj as? [NSDictionary] ?? []
}

func castToNSDictionaryArray(_ obj: Any?, process: (_ dictionaries: [NSDictionary]) throws -> Void) rethrows {
    if let dictArray = castToNSDictionaryArrayOrNil(obj) {
        try process(dictArray)
    }
}

func castToNSDictionaryArrayOrNil(_ obj: Any?) -> [NSDictionary]? {
    return obj as? [NSDictionary]
}

// MARK: -
// MARK: NSData

func castToJSONData(_ dictionary: Dictionary<AnyHashable, Any>) -> Data? {
    return try? JSONSerialization.data(withJSONObject: dictionary, options: JSONSerialization.WritingOptions.prettyPrinted)
}

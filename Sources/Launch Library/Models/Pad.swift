// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let pad = try? newJSONDecoder().decode(Pad.self, from: jsonData)

import Foundation

// MARK: - Pad
struct Pad: Codable {
    let id: Int
    let name: String
    let padType: Int
    let latitude, longitude: String
    let mapURL: String
    let retired, locationid: Int
    let infoURL: String
    let wikiURL: String
    let infoURLs: [JSONAny]
    let changed: String
}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let agency = try? newJSONDecoder().decode(Agency.self, from: jsonData)

import Foundation

// MARK: - Agency
struct Agency: Codable {
    let id: Int
    let name, countryCode, abbrev: String
    let type: Int
    let infoURL: String
    let wikiURL: String
    let infoURLs: [JSONAny]
    let islsp: Int
    let changed: String
}

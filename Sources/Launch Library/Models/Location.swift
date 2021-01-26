// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let location = try? newJSONDecoder().decode(Location.self, from: jsonData)

import Foundation

// MARK: - Location
struct Location: Codable {
    let id: Int?
    let name, countrycode, infoURL, wikiURL: String?
    let infoURLs: [JSONAny?]?
    let changed: String?
}

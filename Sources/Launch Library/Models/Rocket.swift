// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rocket = try? newJSONDecoder().decode(Rocket.self, from: jsonData)

import Foundation

// MARK: - Rocket
struct Rocket: Codable {
    let id: Int
    let name, configuration, defaultPads, familyname: String?
    let infoURL: String?
    let wikiURL: String?
    let infoURLs: [String?]?
    let imageSizes: [Int?]?
    let imageURL: String?
    let changed: String?
    let agencies: [Agency?]?
}

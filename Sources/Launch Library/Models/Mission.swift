// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let mission = try? newJSONDecoder().decode(Mission.self, from: jsonData)

import Foundation

// MARK: - Mission
struct Mission: Codable {
    let id: Int
    let name, missionDescription: String
    let type: Int
    let infoURL: String
    let wikiURL: String
    let infoURLs: [String]
    let changed: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case missionDescription = "description"
        case type, infoURL, wikiURL, infoURLs, changed
    }
}

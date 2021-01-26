// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let missionType = try? newJSONDecoder().decode(MissionType.self, from: jsonData)

import Foundation

// MARK: - MissionType
struct MissionType: Codable {
    let id: Int
    let name, changed: String
}

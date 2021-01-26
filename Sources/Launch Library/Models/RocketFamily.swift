// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rocketFamily = try? newJSONDecoder().decode(RocketFamily.self, from: jsonData)

import Foundation

// MARK: - RocketFamily
struct RocketFamily: Codable {
    let id: Int
    let name, changed: String
}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launchStatus = try? newJSONDecoder().decode(LaunchStatus.self, from: jsonData)

import Foundation

// MARK: - LaunchStatus
struct LaunchStatus: Codable {
    let id: Int
    let name, launchStatusDescription, changed: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case launchStatusDescription = "description"
        case changed
    }
}

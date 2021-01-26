// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let agencyType = try? newJSONDecoder().decode(AgencyType.self, from: jsonData)

import Foundation

// MARK: - AgencyType
struct AgencyType: Codable {
    let id: Int
    let name, changed: String
}

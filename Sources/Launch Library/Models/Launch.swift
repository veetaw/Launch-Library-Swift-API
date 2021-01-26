// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launch = try? newJSONDecoder().decode(Launch.self, from: jsonData)

import Foundation

// MARK: - LaunchServerResponse
struct LaunchServerResponse: Codable {
    let launches: [Launch]
    let total, offset, count: Int
}

// MARK: - Launch
struct Launch: Codable {
    let id: Int?
    let name, windowstart, windowend, net: String?
    let status, tbdtime, tbddate, probability: Int?
    let changed, lsp: String?
}

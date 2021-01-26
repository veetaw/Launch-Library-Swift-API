// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let serverResponse = try? newJSONDecoder().decode(ServerResponse.self, from: jsonData)

import Foundation

// MARK: - CompleteLaunchServerResponse
struct CompleteLaunchServerResponse: Codable {
    let launches: [CompleteLaunch?]?
    let total, offset, count: Int?
}

// MARK: - CompleteLaunch
struct CompleteLaunch: Codable {
    let id: Int?
    let name, windowstart, windowend, net: String?
    let wsstamp, westamp, netstamp: Int?
    let isostart, isoend, isonet: String?
    let status, inhold, tbdtime: Int?
    let vidURLs: [JSONAny?]?
    let vidURL: JSONNull?
    let infoURLs: [JSONAny?]?
    let infoURL, holdreason, failreason: JSONNull?
    let tbddate, probability: Int?
    let hashtag: JSONNull?
    let changed: String?
    let location: Location?
    let rocket: Rocket?
    let missions: [JSONAny?]?
    let lsp: Lsp?
}

// MARK: - Lsp
struct Lsp: Codable {
    let id: Int?
    let name, abbrev, countryCode: String?
    let type: Int?
    let infoURL: JSONNull?
    let wikiURL: String?
    let changed: String?
    let infoURLs: [String?]?
}


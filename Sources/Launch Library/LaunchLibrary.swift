import Foundation

let config = URLSessionConfiguration.default

class LaunchLibrary {
    let session: URLSession
    let decoder: JSONDecoder = JSONDecoder()
    
    
    init() {
        if #available(macOS 10.13, *) {
            config.waitsForConnectivity = true;
        }
        session = URLSession(configuration: config)
    }
    
    func getLaunches(callback: @escaping ([Launch?]?, LaunchLibraryErrors?) -> ()) {
        let _url : URL = URL(string: LL_API_URL + endpoints["launches"]!)!
        
        let task = session.dataTask(with: _url) {(data, response, error) in
            if let error = error {
                callback(nil, LaunchLibraryErrors.requestError(error: error))
            }
            
            if let data = data {
                let serverResponse = try? self.decoder.decode(LaunchServerResponse.self, from: data)
                if serverResponse == nil {
                    callback(nil, LaunchLibraryErrors.parseError)
                }
                callback(serverResponse?.launches, nil)
            }
        }
        task.resume()
    }
    
    func getLaunchById(_ id: Int, callback: @escaping (CompleteLaunch?, LaunchLibraryErrors?) -> ()) {
        let _url : URL = URL(string: LL_API_URL + endpoints["launches"]! + "/" + String(id))!
        
        let task = session.dataTask(with: _url) {(data, response, error) in
            if let error = error {
                callback(nil, LaunchLibraryErrors.requestError(error: error))
            }
            
            if let data = data {
                let serverResponse = try? self.decoder.decode(CompleteLaunchServerResponse.self, from: data)
                if serverResponse == nil {
                    callback(nil, LaunchLibraryErrors.parseError)
                }
                callback(serverResponse?.launches?.first ?? nil, nil)
            }
        }
        task.resume()
    }
}

enum LaunchLibraryErrors : Error {
    case requestError(error: Error)
    case parseError
}

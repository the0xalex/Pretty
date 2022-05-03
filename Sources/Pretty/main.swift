import Foundation
extension String {
  @inline(__always)
  init(rawJsonData: Data) {
    typealias JSS = JSONSerialization
    do {
      let json = try JSS.jsonObject(with: rawJsonData, options: .mutableContainers)
      let data = try JSS.data(withJSONObject: json, options: .prettyPrinted)
      self.init(data: data, encoding: .utf8)!
    } catch {
      print("JSON serialization to string has failed, using raw data.")
      self.init(data: rawJsonData, encoding: .utf8)!
    }
  }
}

let input = readLine(strippingNewline: true).unsafelyUnwrapped.data(using: .utf8).unsafelyUnwrapped
print(String(rawJsonData: input))

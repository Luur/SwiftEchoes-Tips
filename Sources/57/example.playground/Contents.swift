import UIKit

extension String {
    
    func htmlAttributedString(with fontName: String, fontSize: Int, colorHex: String) -> NSAttributedString? {
        do {
            let cssPrefix = "<style>* { font-family: \(fontName); color: #\(colorHex); font-size: \(fontSize); }</style>"
            let html = cssPrefix + self
            guard let data = html.data(using: String.Encoding.utf8) else {  return nil }
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
}

let html = "<strong>Dear Friend</strong> I hope this <i>tip</i> will be useful for <b>you</b>."
let attributedString = html.htmlAttributedString(with: "Futura", fontSize: 14, colorHex: "ff0000")

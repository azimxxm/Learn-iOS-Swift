import UIKit


extension String {
    var getCompny: String {
        if self.count == 13 {
            if self.hasPrefix("+99890") || self.hasPrefix("+99891") {
                return "Beeline"
            }
            if self.hasPrefix("+99895") || self.hasPrefix("+99899") {
                return "UzMobile"
            }
            if self.hasPrefix("+99898") {
                return "Perfectum"
            }
            if self.hasPrefix("+99833") || self.hasPrefix("+99855") {
                return "Humans"
            } else {
                return "Compny not found"
            }
        } else {
            return "To'g'ri kiriting!!!"
        }
    }
}


extension String {
    var formatNumber: String {
        let number = self.replacingOccurrences(of: "(", with: "").replacingOccurrences(of: ")", with: "").replacingOccurrences(of: "-", with: "").replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "@", with: "")
        var formattedNumber = ""
        for i in number.enumerated() {
            if i.offset == 4 || i.offset == 6 || i.offset == 9 || i.offset == 11 {
                formattedNumber.append(" \(i.element)")
            } else {
                formattedNumber.append("\(i.element)")
            }
        }
        return formattedNumber
    }
}

"+9989 (94) 09 01 29".formatNumber
"+9989 (94)-009-01-29".formatNumber
"+9989 (94)@09@01@29".formatNumber
"+9989 (94) 09 01 29".formatNumber

"+998904090129".getCompny
"+998914090129".getCompny
"+998954090129".getCompny
"+998984090129".getCompny
"+998994090129".getCompny
"+998334090129".getCompny
"+998554090129".getCompny

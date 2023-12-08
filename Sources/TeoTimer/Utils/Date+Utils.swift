import Foundation

func ReturnTimeDifferenceNow(
    defaultDateStr: String
) -> Int {
    
    let dateFormatter = DateFormatter()
    
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    dateFormatter.timeZone = TimeZone(abbreviation: "KST")
    
    if let endDate = dateFormatter.date(from: defaultDateStr){
        
        let timeDifference = Int(endDate.timeIntervalSince(Date()))
        
        return timeDifference
        
    }else{
        
        return 0
    }
}

func returnTimeHHmmss( convertTimeForSeconds: Int ) -> String{
    //   seconds ->  HH : mm : ss
    
    let formatter = DateComponentsFormatter()
    
    formatter.allowedUnits = [.hour, .minute, .second]
    formatter.unitsStyle = .positional
    formatter.zeroFormattingBehavior = .pad
    
    if let formattedString = formatter.string(from: TimeInterval(convertTimeForSeconds)) {
        return formattedString
    } else {
        return "00:00:00"
    }
}


func formatNumberWithoutCurrencySymbol(number: Int) -> String {
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = Locale(identifier: "ko_KR")
    formatter.currencySymbol = ""

    if let formattedString = formatter.string(from: NSNumber(value: number)) {
        return formattedString
    } else {
        return "\(number)"
    }
}


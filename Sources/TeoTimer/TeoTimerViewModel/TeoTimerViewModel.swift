//
//  TeoTimerViewModel.swift
//
//
//  Created by 김재석 on 12/8/23.
//

import Foundation
import SwiftUI

public class TeoTimerViewModel: ObservableObject{
    @Published var seconds: Int
    @Published var bgColor: Color
    @Published var textColor: Color
    
    var timer: Timer?
    var auctionTimeAccordingStatus: String{
        
        if seconds != 0{
            
            return returnTimeHHmmss(convertTimeForSeconds: seconds)
            
        }else{
            
            return ""
            
        }
    }
    
    public init(
        seconds: Int,
        bgColor: Color,
        textColor: Color,
        timer: Timer? = nil
    ) {
        self.seconds = seconds
        self.bgColor = bgColor
        self.textColor = textColor
        self.timer = timer
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            
            if self.seconds > 0{
                self.seconds -= 1
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}

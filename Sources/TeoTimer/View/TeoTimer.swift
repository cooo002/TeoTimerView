
import SwiftUI

public struct TeoTimerView: View {
    
    @ObservedObject var teoTimerViewModel: TeoTimerViewModel
    
    public init(
        seconds: Int,
        bgColor: Color = .white,
        textColor: Color = .black
    ){
        
        self.teoTimerViewModel = TeoTimerViewModel(
            seconds: seconds,
            bgColor: bgColor,
            textColor: textColor
        )
    }
    
    public var body: some View {
        HStack{
            Text(teoTimerViewModel.auctionTimeAccordingStatus)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(teoTimerViewModel.textColor)
            
            Spacer()
        }
        .padding(.top, 4)
        .padding(.bottom, 4)
        .padding(.leading, 8)
        .padding(.trailing, 8)
        .background(teoTimerViewModel.bgColor)
        .onAppear{
            teoTimerViewModel.startTimer()
        }
        .onDisappear(){
            teoTimerViewModel.stopTimer()
        }
    }
}

#Preview {
    TeoTimerView(seconds: 99999)
}

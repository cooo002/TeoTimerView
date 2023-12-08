
import SwiftUI

public struct TeoTimerView: View {
    
    @StateObject var teoTimerViewModel: TeoTimerViewModel

     public init(
         seconds: Int,
         bgColor: Color = .white,
         textColor: Color = .black,
         font: Font = .system(size: 12, weight: .bold)
     ){
         self._teoTimerViewModel = StateObject(
            wrappedValue: TeoTimerViewModel(
                seconds: seconds,
                bgColor: bgColor,
                textColor: textColor,
                font: font
            )
         )
     }
    
    public var body: some View {
        HStack{
            Text(returnRemainTime(teoTimerViewModel.seconds))
                .font(teoTimerViewModel.font)
                .foregroundColor(teoTimerViewModel.textColor)
        }
        .padding(.top, 4)
        .padding(.bottom, 4)
        .padding(.leading, 8)
        .padding(.trailing, 8)
        .background(teoTimerViewModel.bgColor)
        .onAppear {
            teoTimerViewModel.startTimer()
        }
        .onDisappear() {
            teoTimerViewModel.stopTimer()
        }
    }
}

#Preview {
    TeoTimerView(seconds: 99999)
}

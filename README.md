# TeoTimerView
SwiftUI 기반에 간단한 타이머 뷰 라이브러리입니다.


<!-- ABOUT THE PROJECT -->
## About The Project

SwiftUI를 기반으로 한 간단한 타이머 뷰입니다.
배경색, 폰트, 텍스트색 등을 변경할 수 있고 추후에 여러 기능을 추가할 예정입니다.

## Installation

SPM으로 설치가 가능합니다.

1. 레포지토리 주소를 이용해 SPM에 라이브러리 추가
   ```sh
   https://github.com/cooo002/TeoTimerView.git
   ```

## Usage
  ```sh
   TeoTimerView(
                seconds: 110, // 타이머 적용할 시간(초) 파라미터
                bgColor: .blue, // 타이머 뷰 배경색 파라미터
                textColor: .white, // 타이머 뷰 텍스트 색 파라미터
                font: .custom(CustomFont.Bold.rawValue, size: 13), // 타이머 뷰 텍스트 폰트 파라미터
                alignment: .center // 타이머 뷰 정렬 파라미터
            )
  ```

# 커스텀 팝업(Custom Popup) - ViewController 생성 후 Present로 팝업 띄우고 dismiss로 사라지게 하기

1. ViewController, Xib 파일 생성
2. 메인에서 버튼 클릭 시 팝업 Present ( 메인에 텍스트필드, 라벨, 버튼 생성)
3. 메인 텍스트필드에 문자 입력 후 버튼 클릭하면 해당 문자 가지고 팝업으로 Present
4. 투버튼 팝업 (확인, 취소)
5. 확인 (Delegate 로 '확인이 눌렸습니다.' 문구 메인으로 보내서 메인에 띄우기)
6. 취소 (Dismiss 팝업창 닫기)

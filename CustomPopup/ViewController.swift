//
//  ViewController.swift
//  CustomPopup
//
//  Created by 이준영 on 2022/05/12.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, DisDelegate {
    //delegate required
    func delegateString(text: String) {
        //팝업에서 delegate한 값 textLabel에 뿌려주기
        print(text)
        textLabel.text = text
    }
    

    //팝업 문구 가져올 라벨
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // textField delegate
        textField.delegate = self
    }
    // 화면 클릭 키보드 내리기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 팝업 띄울 버튼 Action
    @IBAction func popupButtonAction(_ sender: Any) {
        let popup = TwoButtonPopup(nibName: "TwoButtonPopup", bundle: nil)
        popup.modalPresentationStyle = .overCurrentContext
        popup.delegate = self
        popup.receiveString = textField.text
        self.present(popup, animated: false)
    }
    
}


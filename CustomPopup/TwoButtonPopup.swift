//
//  TwoButtonPopup.swift
//  CustomPopup
//
//  Created by 이준영 on 2022/05/12.
//

import UIKit

// delegate protocol
protocol DisDelegate{
    func delegateString(text: String)
}

class TwoButtonPopup: UIViewController {
    
    var delegate: DisDelegate?
    
    //main에서 받아온 Label
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var popupView: UIView!
    
    //main에서 받을 String 형 옵셔널 변수
    var receiveString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //팝업뷰의 cornerRadius
        popupView.layer.cornerRadius = 6
        
        //main에서 받아온 text Label에 표시
        presentLabel.text = receiveString
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func confirmButtonAction(_ sender: Any) {
        dismiss(animated: false) {
            self.delegate?.delegateString(text: "확인 버튼을 눌렀습니다.")
        }
    }
}

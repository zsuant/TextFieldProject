//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 이수겸 on 2022/09/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = .gray
        
        textField.keyboardType = .emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    //유저가 입력을 시작할때(허락)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    //유저의 입력이 시작되고나서(시점)
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트필드에 입력 시작")
    }
    //입력내용 전체삭제 할때(허락)
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return false
    }
    //한글자 한글자 입력하는 순간(허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }
    //키보드 엔터키 눌렀을때(다음동작 허락)
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    //유저가 입력을 마쳤을때(허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    //유저가 입력을 마쳤을때(시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트필드에 입력 끝")

    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
}


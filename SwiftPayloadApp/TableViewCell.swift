//
//  TableViewCell.swift
//  SwiftPayloadApp
//
//  Created by Natsumo Ikeda on 2016/10/07 (update on 2020/03/23).
//  Copyright 2020 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UITextFieldDelegate {
    // key
    @IBOutlet weak var keyLabel: UILabel!
    // value
    @IBOutlet weak var valueTextField: UITextField!
    // AppDelegate
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        valueTextField.delegate = self
        
    }
    
    func setCell(cell: Int) {
        
        let key = appDelegate.payloadKeyData[cell]
        let value = appDelegate.payloadValueData[cell]
        
        keyLabel.text = key
        valueTextField.text = value
        
    }
    
    // キーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

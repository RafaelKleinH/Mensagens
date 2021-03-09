//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    
    
    
    
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        
        
    }
    
 
    
}

extension MessageColorViewController: ColorPickerProtocol{
    func applyColor(color: UIColor){
        
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}

//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Rafael Hartmann on 08/03/21.
//  Copyright © 2021 Eric Brito. All rights reserved.
//

import UIKit

protocol  ColorPickerProtocol: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {

    
    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var reference: ColorPickerProtocol?
    
    
    @IBAction func changeColor(_ sender: Any) {
        
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    @IBAction func chooseColor(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        reference?.applyColor(color: viColor.backgroundColor!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()


    }

}

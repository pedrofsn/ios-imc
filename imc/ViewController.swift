//
//  ViewController.swift
//  imc
//
//  Created by Aluno on 24/02/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldWeight: UITextField!
    @IBOutlet weak var textFieldHeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: UIButton) {
        
        let stringWeight = getValuesFromField(field : textFieldWeight)
        let stringHeight = getValuesFromField(field : textFieldHeight)
        
        if(stringWeight.isEmpty == false && stringHeight.isEmpty == false) {
            
            let weight = Float(stringWeight)!
            let height = Float(stringHeight)!
            
            let result = weight / (height * weight)
            print(String.init(format: "Seu peso é %f", result))
        }
    }
    
    private func getValuesFromField(field: UITextField!) -> String {
        if let value = field?.text {
            if (value.isEmpty == false) {
                return value
            }
        }
        
        guard let placeholder = field.placeholder else {return ""}
        print("Preencha o campo \(String(describing: placeholder ))")
        
        return ""
    }
    
}

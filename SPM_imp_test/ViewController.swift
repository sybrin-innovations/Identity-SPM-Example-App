//
//  ViewController.swift
//  SPM_imp_test
//
//  Created by Rhulani Ndhlovu on 2024/03/19.
//

import UIKit
import Sybrin_Identity

class ViewController: UIViewController {

    let licenseKey: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sybrinConfig = SybrinIdentityConfiguration(license: licenseKey)
        sybrinConfig.language = .ENGLISH
        SybrinIdentity.shared.configuration = sybrinConfig
        
        SybrinIdentity.shared.scanPassport(on: self, for: .Philippines) {
          (result, message) in
          
          print("done launching")
        }
    }


}


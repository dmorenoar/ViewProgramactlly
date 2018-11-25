//
//  ViewController.swift
//  ViewProgramactlly
//
//  Created by dmorenoar on 25/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Instancio la vista utilizando mi clase personalizada y le paso los atributos
        let myView:UIView = VistaPersonalizada(frame: CGRect(x: 17 , y: 250, width: 100, height: 100), ataque: 22)
        
        self.view.addSubview(myView)
        
        
    }


}


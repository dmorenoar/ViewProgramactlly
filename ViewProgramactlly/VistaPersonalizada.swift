//
//  VistaPersonalizada.swift
//  ViewProgramactlly
//
//  Created by dmorenoar on 25/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

/*La primera vista se crea utilizando una view en el mainstoryboard. Esta utiliza el valor
 de ataque que recibe el label al crearlo.
 La segunda vista se crea instanciandola en el viewcontroller y le pasamos los valores que va a tener
 directamente en el constructor. El método setData asigna el valor al label que debe tener el ataque
 recibido por parámetro.*/

class VistaPersonalizada: UIView {

    var ataqueView:Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews(){
        self.addSubview(statsView)
        statsView.addSubview(icono)
        statsView.addSubview(labelAtaque)

    }
    
    convenience init(frame:CGRect, ataque:Int) {
        self.init(frame: frame)
        //self.ataqueView = ataque
        setData(ataque: ataque)
    }

    var statsView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        let imageView:UIImageView = UIImageView(frame: CGRect(x: -10, y: 0, width: 400, height: 200))
        imageView.image = UIImage(named: "back_heroe")
        
        view.addSubview(imageView)
        
        return view
    }()
    
    var icono:UIImageView = {
        //let ataqueImage:UIImageView = UIImageView(image: UIImage(named: "damage"))
        let ataqueImage:UIImageView = UIImageView(frame: CGRect(x: 110, y: 50, width: 50, height: 50))
        ataqueImage.image = UIImage(named: "damage")
        return ataqueImage
    }()
    
    var labelAtaque:UILabel = {
        let lbl:UILabel = UILabel(frame: CGRect(x: 160, y: 50, width: 50, height: 50))
        lbl.text = String(99)
        lbl.textColor = UIColor.white
        return lbl
    }()
    
    func setData(ataque:Int){
        labelAtaque.text = String(ataque)
    }
}

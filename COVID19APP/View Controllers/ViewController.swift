//
//  ViewController.swift
//  COVID19APP
//
//  Created by Amu Siya on 7/2/20.
//  Copyright © 2020 Amruta Deole. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet private var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }

    func setUpElements(){
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }
}


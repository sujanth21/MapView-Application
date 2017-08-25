//
//  ViewController.swift
//  MapViewApplication
//
//  Created by Sujanth Sebamalaithasan on 25/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func standardBtnPressed(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satalliteBtnPressed(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func hybridBtnPressed(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
    
    @IBAction func locateMeBtnPressed(_ sender: Any) {
    }
    
    @IBAction func directionBtnPressed(_ sender: Any) {
    }
}


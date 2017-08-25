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
    
    let latitude = -37.811741
    let longitude = 144.966716
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
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


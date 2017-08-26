//
//  ViewController.swift
//  MapViewApplication
//
//  Created by Sujanth Sebamalaithasan on 25/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let latitude = -37.811741
    let longitude = 144.966716
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinObject = MKPointAnnotation()
        pinObject.coordinate = pinLocation
        pinObject.title = "Flinders Street Station"
        pinObject.subtitle = "Flinders Street railway station is a railway station on the corner of Flinders and Swanston Streets in Melbourne, Australia. "
        
        self.mapView.addAnnotation(pinObject)
        
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
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
    
    @IBAction func directionBtnPressed(_ sender: Any) {
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations[0] as CLLocation
        manager.stopUpdatingLocation()
        
        let location = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
    }
}


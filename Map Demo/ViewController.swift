//
//  ViewController.swift
//  Map Demo
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Define latitude and longitud
        let latitude:CLLocationDegrees = 43.64
        let longitude:CLLocationDegrees = -79.38
        
        // Define delta latitude and longitude
        let latDelta:CLLocationDegrees = 0.05
        let longDelta:CLLocationDegrees = 0.05
        
        // Define span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // define location
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        // define region
        let region = MKCoordinateRegion(center: location, span: span)
        
        // set the region on the map
        mapView.setRegion(region, animated: true)
        
        // adding annotation for the map
        let annotation = MKPointAnnotation()
        annotation.title = "Toronto City"
        annotation.subtitle = "City of dreams"
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
    }


}


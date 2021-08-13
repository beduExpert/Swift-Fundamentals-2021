//
//  ViewController.swift
//  AppMaps
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

  @IBOutlet weak var mapView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    addPinLocation()
  }
  
  private func addPinLocation() {
    // 1
    let locationName: String = "El Ángel"
    let locationSubtitle: String = "de la Independencia"
    let coordinates: (lat: Double, long: Double) =  (19.426980, -99.167696)
    let location = CLLocationCoordinate2D(latitude: coordinates.lat, longitude: coordinates.long)

    // 2
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
    //3
    let annotation = MKPointAnnotation()
    annotation.coordinate = location
    annotation.title = locationName
    annotation.subtitle = locationSubtitle
    mapView.addAnnotation(annotation)
  }

}


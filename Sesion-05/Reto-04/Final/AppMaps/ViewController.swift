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
    mapView.delegate = self
    addPinLocation()
  }
  
  private func addPinLocation() {
    let coordsAngel: (name: String, subtitle: String, lat: Double, long: Double) =  ("El Ángel", "de la Independencia", 19.426980, -99.167696)
    let coordsPalace: (name: String, subtitle: String, lat: Double, long: Double) =  ("Palacio", "de Bellas Artes", 19.435352, -99.141055)
    
    // Locations
    let locationAngel = CLLocationCoordinate2D(latitude: coordsAngel.lat, longitude: coordsAngel.long)
    let locationPalace = CLLocationCoordinate2D(latitude: coordsPalace.lat, longitude: coordsPalace.long)
    
    // Placemarks:
    let sourcePlacemark = MKPlacemark(coordinate: locationAngel, addressDictionary: nil)
    let destinationPlacemark = MKPlacemark(coordinate: locationPalace, addressDictionary: nil)
    
    let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
    let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
    
    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: locationAngel, span: span)
    mapView.setRegion(region, animated: true)
    
    addAnnotation(coordinate: locationAngel, name: coordsAngel.name, subtitle: coordsAngel.subtitle)
    addAnnotation(coordinate: locationPalace, name: coordsPalace.name, subtitle: coordsPalace.subtitle)
    
    directions(source: sourceMapItem, destination: destinationMapItem)
  }
  
  func addAnnotation(coordinate: CLLocationCoordinate2D, name: String, subtitle: String) {
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    annotation.title = name
    annotation.subtitle = subtitle
    mapView.addAnnotation(annotation)
  }
  
  func directions(source: MKMapItem, destination: MKMapItem) {
    // Calculate the direction
    let directionRequest = MKDirections.Request()
    directionRequest.source = source
    directionRequest.destination = destination
    directionRequest.transportType = .automobile
    
    let directions = MKDirections(request: directionRequest)
    directions.calculate { (response, error) -> Void in
      guard let response = response else { return }
      let route = response.routes[0]
      self.mapView.addOverlay((route.polyline), level: MKOverlayLevel.aboveRoads)
      let rect = route.polyline.boundingMapRect
      self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
    }
  }
}

extension ViewController: MKMapViewDelegate {
  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    let renderer = MKPolylineRenderer(overlay: overlay)
    renderer.strokeColor = UIColor.red
    renderer.lineWidth = 4.0
    return renderer
  }
}

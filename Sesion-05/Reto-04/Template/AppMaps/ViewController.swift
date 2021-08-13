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
    // TODO:
    // AGREGAR DOS COORDENADAS CON SU NOMBRE Y SUBTITULO

    // TODO: Crear dos variables de tipo CLLocationCoordinate2D
    // Estas son nuestros Locations.
    
    
    // TODO: Crea dos variables de tipo MKPlacemark,
    // cada una de estas variables debe tener como valor el location correspondiente.
    
    // TODO: Crea dos variables de tipo MKMapItem, estas variables deben tener como valor cada placemark creado.

    let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    let region = MKCoordinateRegion(center: <SomeLocation>, span: span)
    mapView.setRegion(region, animated: true)
    
    // TODO: Agrega los Annotations (pines) del mapa
    // utiliza la función addAnnotation
    // ejemplo: addAnnotation(coordinate: locationAngel, name: coordsAngel.name, subtitle: coordsAngel.subtitle)
    
    // TODO: Crea la ruta, basate en la función directions()
    // para ello necesitaras usar los MKMapItems
    //directions(source: sourceMapItem, destination: destinationMapItem)
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

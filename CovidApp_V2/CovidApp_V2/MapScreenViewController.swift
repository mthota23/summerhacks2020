//
//  MapScreenViewController.swift
//  CovidApp_V2
//
//  Created by Meghana Thota on 7/31/20.
//  Copyright © 2020 Meghana Thota. All rights reserved.
//

import UIKit
import MapKit

class MapScreenViewController: UIViewController {

    @IBOutlet weak var mapView2: MKMapView!
    
    /*

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView2.userTrackingMode = .follow
        let annotations = LocationsStorage.shared.locations.map { annotationForLocation($0) }
        mapView2.addAnnotations(annotations)
        NotificationCenter.default.addObserver(self, selector: #selector(newLocationAdded(_:)), name: .newLocationSaved, object: nil)
      }
      
      @IBAction func addItemPressed(_ sender: Any) {
        guard let currentLocation = mapView2.userLocation.location else {
          return
        }
        LocationsStorage.shared.saveCLLocationToDisk(currentLocation)
      }
      
      func annotationForLocation(_ location: Location) -> MKAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = location.dateString
        annotation.coordinate = location.coordinates
        return annotation
      }
      
      @objc func newLocationAdded(_ notification: Notification) {
        guard let location = notification.userInfo?["location"] as? Location else {
          return
        }
        
        let annotation = annotationForLocation(location)
        mapView2.addAnnotation(annotation)
      }
    }



    */ 
    @IBAction func findUserLocationAndDropPin(sender: UIButton) {
        var userLocationCoordinates = CLLocationCoordinate2DMake(locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude)
        var pinForUserLocation = MKPointAnnotation()
        pinForUserLocation.coordinate = userLocationCoordinates
        mapView2.addAnnotation(pinForUserLocation)
        mapView2.showAnnotations([pinForUserLocation], animated: true)
    }
  
    
    fileprivate let locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        mapView2.showsUserLocation = true
        /*
        // 1
        let location = CLLocationCoordinate2D(latitude: 51.50007773,
            longitude: -0.1246402)
        
        // 2
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
            mapView2.setRegion(region, animated: true)
            
        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Big Ben"
        annotation.subtitle = "London"
        mapView2.addAnnotation(annotation)*/
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.m
//  MapView
//
//  Created by yishain on 7/7/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController () <MKMapViewDelegate>
{
    BOOL isFirstGetLocation;
    CLLocationManager *locationManager;
    IBOutlet MKMapView *myMapView;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *label2;
    CLGeocoder *geoCoder;
}
//- (void)requestAlwaysAuthorization;

@property (nonatomic, readonly) MKUserLocation *userLocation;
@property (nonatomic) CLLocationCoordinate2D centerCoordinate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
       isFirstGetLocation =  NO;
    locationManager = [[CLLocationManager alloc] init];
    [locationManager requestWhenInUseAuthorization];
//     [self getCoordinateFromAddress];
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc]init];
    annotation.title = @"內湖前女友家";
    annotation.subtitle = @"好無聊";
    annotation.coordinate = CLLocationCoordinate2DMake(25.0740, 121.3726);
   
//    NSLog(@"map %@ %@", myMapView, annotation);
    
   [myMapView addAnnotation:annotation];
   }

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate
                   animated:(BOOL)animated{};
    

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:
(MKUserLocation *)userLocation {

    NSLog(@"%f %f",userLocation.location.coordinate.latitude ,userLocation.location.coordinate.longitude);
    [geoCoder reverseGeocodeLocation:_userLocation.location completionHandler:^(NSArray *placemarks, NSError *error) {
        if(error == nil && placemarks.count > 0)
        {
            CLPlacemark *placeMark = placemarks[0];
            for(NSString *key in placeMark.addressDictionary) {
                NSLog(@"%@ %@", key, placeMark.addressDictionary[key]);
            }
            NSArray *addressArray = [placeMark.addressDictionary objectForKey:@"FormattedAddressLines"];
            for(NSString *address in addressArray) {
                NSLog(@"address %@", address);
            }
        }
    }
    ];

    
    if(isFirstGetLocation == NO) {
        isFirstGetLocation = YES;
//        MKCoordinateRegion region ;
//        region.center = userLocation.location.coordinate;
//        MKCoordinateSpan mapSpan;
//        mapSpan.latitudeDelta = 0.005;
//        mapSpan.longitudeDelta = 0.005;
//        region.span = mapSpan;
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 1000, 1000 );
        [mapView setRegion:region animated:YES];
}
    
}
//
//-(void)getCoordinateFromAddress {
//    
//    [geoCoder geocodeAddressString:@"台北市淡水捷運站" completionHandler:^(NSArray *placemarks, NSError *error) {
//        
//        NSLog(@"geocodeAddressString %d", placemarks.count);
//        
//        if(error == nil && placemarks.count > 0)
//        {
//            CLPlacemark *placeMark = placemarks[0];
//            NSLog(@"location %@", placeMark.location);
//            
//            
//        }
//        
//        
//    }];
//}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

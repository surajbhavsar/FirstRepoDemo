//
//  ViewController.h
//  suraj_maptask
//
//  Created by Kartik Kotak on 25/11/15.
//  Copyright (c) 2015 icreate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
{
    MKPointAnnotation *annotation;
}
@property (weak, nonatomic) IBOutlet MKMapView *map_view;
@property (weak, nonatomic) IBOutlet UILabel *lbl_latitude;
@property (weak, nonatomic) IBOutlet UILabel *lbl_longitude;

@end

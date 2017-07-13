//
//  ViewController.m
//  suraj_maptask
//
//  Created by Kartik Kotak on 25/11/15.
//  Copyright (c) 2015 icreate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self tapgesturerecognizer];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapgesturerecognizer
{
    UITapGestureRecognizer *tapgesture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(mapviewtap:)];
    [self.map_view addGestureRecognizer:tapgesture];
}

-(IBAction)mapviewtap:(id)sender
{
    [self.map_view removeAnnotation:annotation];
    CGPoint touchpoint=[sender locationInView:self.map_view];
    
    CLLocationCoordinate2D touchcoordinate=[self.map_view convertPoint:touchpoint toCoordinateFromView:self.map_view];
    self.lbl_latitude.text=[NSString stringWithFormat:@"Latitude Is: %f",touchcoordinate.latitude];
    self.lbl_longitude.text=[NSString stringWithFormat:@"Longitude Is: %f",touchcoordinate.longitude];
    [self setannotation:touchcoordinate];
}

-(void)setannotation:(CLLocationCoordinate2D)coordinate
{
    annotation=[[MKPointAnnotation alloc]init];
    [annotation setCoordinate:coordinate];
    [self.map_view addAnnotation:annotation];
}
- (void) newMethodCreated
{
    
}
@end

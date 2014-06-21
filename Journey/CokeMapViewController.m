//
//  CokeMapViewController.m
//  Journey
//
//  Created by Pavel Chechetin on 4/21/14.
//  Copyright (c) 2014 Pavel Chechetin. All rights reserved.
//

#import "CokeMapViewController.h"
#import "CokeTourManager.h"
#import "CokeTour.h"

#define UUID        @"FA53597E-51E8-4EFD-89CB-24E75BE100D5"
#define MAPBOX_ID   @"paulche.ie38p2f4"

@interface CokeMapViewController ()

@end

@implementation CokeMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add MapBox map as overlay on top of Apple's map
    [self.outletMapView addOverlay: [[MBXRasterTileOverlay alloc] initWithMapID:MAPBOX_ID]];
    
    // Do any additional setup after loading the view.
    // Get dummy tour
    CokeTourManager * tourManager = [CokeTourManager sharedInstance];
 
    CokeTour * tour = [tourManager tourWithUuid:UUID];
#pragma unused(tour)
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - MKMapViewDelegate protocol implementation

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
{
    // This is boilerplate code to connect tile overlay layers with suitable renderers
    //
    if ([overlay isKindOfClass:[MBXRasterTileOverlay class]])
    {
        MKTileOverlayRenderer *renderer = [[MKTileOverlayRenderer alloc] initWithTileOverlay:overlay];
        return renderer;
    }
    return nil;
}

@end

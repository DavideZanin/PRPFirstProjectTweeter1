//
//  PRPViewController.m
//  PRPFirstProjectTweeter1
//
//  Created by Davide Zanin on 20/12/13.
//  Copyright (c) 2013 Davide Zanin. All rights reserved.
//

#import "PRPViewController.h"
#import <Social/Social.h>

@interface PRPViewController ()

@end

@implementation PRPViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleTweetButtonTapped:(id) sender {
    if([SLComposeViewController isAvailableForServiceType: SLServiceTypeTwitter]){
        SLComposeViewController *tweetVC = [SLComposeViewController composeViewControllerForServiceType: SLServiceTypeTwitter];
        [tweetVC setInitialText: @"I just finished the first project in iOS SDK Development."];
        [self presentViewController:tweetVC animated:YES completion:NULL];
    } else {
    NSLog (@"Can't send tweet");
    }
}
    
    

@end

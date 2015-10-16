//
//  FISProfileViewController.m
//  horizontal-profile
//
//  Created by Guang on 10/16/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISProfileViewController.h"

@interface FISProfileViewController ()
@property (weak, nonatomic) IBOutlet UIView *TopView;
@property (weak, nonatomic) IBOutlet UIImageView *profileView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *className;
@property (weak, nonatomic) IBOutlet UILabel *facts;
@property (weak, nonatomic) IBOutlet UITextView *textsView;
@property (weak, nonatomic) IBOutlet UIStackView *stackV;

@property (strong, nonatomic) NSLayoutConstraint *topViewBottomConstraint;

@end

@implementation FISProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"HELLO screen");

    [self.TopView.topAnchor constraintEqualToAnchor:self.topLayoutGuide.bottomAnchor].active = YES;
    [self.TopView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.TopView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    
    self.topViewBottomConstraint = [self.TopView.heightAnchor constraintEqualToConstant:40];
    self.topViewBottomConstraint.active = YES;
    self.topViewBottomConstraint.constant = 40;
    
    [self.profileView.topAnchor constraintEqualToAnchor:self.TopView.bottomAnchor constant:50].active = YES;
    [self.profileView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.profileView.rightAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:20].active = YES;
    [self.profileView.bottomAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:40].active = YES;
    
    [self.stackV.topAnchor constraintEqualToAnchor:self.TopView.bottomAnchor constant:30].active = YES;
    [self.stackV.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:0].active = YES;
    [self.stackV.leftAnchor constraintEqualToAnchor:self.profileView.rightAnchor constant:20].active = YES;
    [self.stackV.bottomAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:40].active = YES;
    
    [self.textsView.topAnchor constraintEqualToAnchor: self.profileView.bottomAnchor constant:35].active = YES;
    [self.textsView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-20].active = YES;
    [self.textsView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20].active = YES;
    [self.textsView.bottomAnchor constraintEqualToAnchor:self.bottomLayoutGuide.bottomAnchor constant:-10].active = YES;
   

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)willTransitionToTraitCollection:(UITraitCollection *)newCollection
             withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator{
    
    
    if (newCollection.userInterfaceIdiom == UIUserInterfaceIdiomPhone && newCollection.displayScale == 3) {
        self.topViewBottomConstraint.constant = 40;
        NSLog(@"HEllo transition");
    }else{
        self.topViewBottomConstraint.constant = 0;

    }
}
    


@end

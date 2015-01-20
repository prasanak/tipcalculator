//
//  TipViewController.m
//  TipCalculator
//
//  Created by Prasannakumar Jobigenahally on 1/19/15.
//  Copyright (c) 2015 Prasannakumar Jobigenahally. All rights reserved.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (retain, nonatomic) IBOutlet UITextField *billTextField;
@property (retain, nonatomic) IBOutlet UILabel *tipLabel;
@property (retain, nonatomic) IBOutlet UILabel *totalLabel;
@property (retain, nonatomic) IBOutlet UISegmentedControl *tipControl;

- (IBAction)onTap:(id)sender;
- (void)updateValues;

@end

@implementation TipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Prasanna Tip Calculator";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //[self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_billTextField release];
    [_tipLabel release];
    [_tipControl release];
    [_billTextField release];
    [_tipLabel release];
    [_totalLabel release];
    [_tipControl release];
    [super dealloc];
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void)updateValues {
    float billAmount = [self.billTextField.text floatValue];
    
    NSArray *tipValues = @[@(0.1), @(0.15), @(0.2)];
    
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    
    float totalAmount = tipAmount + billAmount;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%0.2f", tipAmount];
    self.totalLabel.text = [NSString stringWithFormat:@"$%0.2f", totalAmount];
    
}

@end

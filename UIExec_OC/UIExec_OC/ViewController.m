//
//  ViewController.m
//  UIExec_OC
//
//  Created by simao on 15/10/7.
//  Copyright © 2015年 simao. All rights reserved.
//

#import "ViewController.h"
#import  "ManualMasterTableViewController.h"
#import "MasterTableTableViewController.h"

@interface ViewController ()
//@property (strong, nonatomic) UIViewController *dest_Vc;

@end

@implementation ViewController

- (IBAction)onManualSegueTouchDown:(id)sender {
    [self performSegueWithIdentifier:@"manualSegue" sender:sender];
    }

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSMutableArray *tableItems = [NSMutableArray arrayWithArray:@[@"Item1 ", @"Item 2", @"Item 3"]];
    if ([segue.identifier  isEqual:@"manualSegue"]) {
        ManualMasterTableViewController *dest_Vc = (ManualMasterTableViewController *) segue.destinationViewController;
        //dest_Vc.items = [NSMutableArray arrayWithArray: tableItems];
        dest_Vc.items = tableItems;
        //NSLog(@"%lu", (unsigned long)[tableItems count]);
    } else if ([segue.identifier isEqualToString:@"actionSegue"]) {
        MasterTableTableViewController *destVC = (MasterTableTableViewController *) segue.destinationViewController;
        destVC.items = tableItems;
    }
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

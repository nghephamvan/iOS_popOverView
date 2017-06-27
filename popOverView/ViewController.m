//
//  ViewController.m
//  popOverView
//
//  Created by TMA103 on 6/22/17.
//  Copyright © 2017 TMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popoverWithoutBarButton:(id)sender {
    NSLog(@"test popover");
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"Pop"];
    vc.modalPresentationStyle = UIModalPresentationPopover;
    [self presentViewController:vc animated:YES completion:nil];
    
    UIPopoverPresentationController *popView = [vc popoverPresentationController];
    popView.permittedArrowDirections = UIPopoverArrowDirectionUp;
    popView.delegate = self;
    popView.sourceRect = CGRectMake(30, 30, 10, 10);
    popView.sourceView = self.view;
}
@end

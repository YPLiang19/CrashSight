//
//  ViewController.m
//  CrashSightExample
//
//  Created by Tianyu Xia on 2022/8/18.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)testException:(id)sender {
    
    NSArray *arr = [NSArray array];
    id o =  arr[1];
}

@end

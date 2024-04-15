//
//  ViewController.m
//  CrashSightExample
//
//  Created by Tianyu Xia on 2022/8/18.
//

#import "ViewController.h"

#define MYCrash(p) int *ptr = (int *)p;\
*ptr = 0;

static __attribute__((always_inline)) void testCrash1(void) {
    dispatch_sync(dispatch_get_global_queue(0, 0), ^{
        MYCrash(1025)
    });
}

static __attribute__((always_inline)) void testCrash2(void) {
    testCrash1();
}


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger index = [[NSUserDefaults standardUserDefaults] integerForKey:@"cstest_index"];
    [[NSUserDefaults standardUserDefaults] setInteger:index +1 forKey:@"cstest_index"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    index = index % 3;
    if (index == 0) {
        
    }
    if (index == 1) {
        
    }
    if (index == 2) {
        
    }
    
}

- (IBAction)testException:(id)sender {
    
    
    NSArray *o = @[];
    
    o[1];

}

@end

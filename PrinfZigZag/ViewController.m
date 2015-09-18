//
//  ViewController.m
//  PrinfZigZag
//
//  Created by Dzung Tran on 8/9/15.
//  Copyright (c) 2015 IOS32 class - Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self printZigZagWithHeight:6 width: 35];
}

- (void)printZigZagWithHeight:(int)height width: (int)width {
    if (height < 2 || width < 1) return;

    char *symbol = "x";
    char *space = " ";
    int step = height - 1;
    
    for(int i = 0; i <= step; i++) {
        for(int j = 0; j < width; j++) {
            if( ((i + j) % step == 0 && (i + j) / step % 2 == 1) ||
               ((j - i) % step == 0 && (j - i) / step % 2 == 1) ) {
                printf("%s", symbol);
            }
            else {
                printf("%s", space);
            }
        }
        printf("\n");
    }
}

@end

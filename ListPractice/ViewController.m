//
//  ViewController.m
//  ListPractice
//
//  Created by Zaur Giyasov on 09/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "ViewController.h"
#import "NodePractic.h"
#import "PointerExchange.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Pointer practic
    [self pointerPractic];
    
    // Continue - Lists
    [self listPractic];
    
    pause();
    
}

-(void) pointerPractic {
    PointerExchange *pe = [[PointerExchange alloc] init];
    
    int a = 8;
    printf("a = %d\n", a);
    [pe changeIntValue: &a];
    printf("a = %d", a);
    
    
    // array[10];
    int Arr[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    int Arr2[] = { 0, 1 };
    
    for (int i = 0; i < 10 ; i++) {
        printf("arr[%d] = %d\n", i, Arr[i]);
    }
    
    for (int i = 0; i < 2 ; i++) {
        printf("Arr2[%d] = %d\n", i, Arr[i]);
    }
    
    printf("\n");
    
    [pe changeArrayValue: Arr2 size:1]; // Arr
    
    for (int i = 0; i < 2 ; i++) {
        printf("Arr2[%d] = %d\n", i, Arr2[i]);
    }
    
    [pe changeArrayValue: &Arr size:5]; // &Arr
    
    for (int i = 0; i < 10 ; i++) {
        printf("arr[%d] = %d\n", i, Arr[i]);
    }
}

-(void) listPractic {
    printf("\n\n");
    NodePractic *np = [[NodePractic alloc] init];
    
    [np mainExample];
}


@end

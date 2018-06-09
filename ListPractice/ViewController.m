//
//  ViewController.m
//  ListPractice
//
//  Created by Zaur Giyasov on 09/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "ViewController.h"
#import "NodePractic.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NodePractic *np = [[NodePractic alloc] init];
    [np nodePractic];
    
}

@end

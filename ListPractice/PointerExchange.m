//
//  PointerExchange.m
//  ListPractice
//
//  Created by Zaur Giyasov on 09/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "PointerExchange.h"

@implementation PointerExchange

-(void)changeIntValue:(int *)value {
    //    int *p;
    //    p = &a;
    //    *p = 100;
    int newValue = 100;
    *value = newValue;
}

-(void)changeArrayValue:(int *)arr size:(size_t)size {
    
    // array[10];
    // int Arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    // int *p;
    // p = Arr; // или тоже самое что:  p = &App[0]
    // *p = Arr[0], *p+1 = Arr[1], *p+9 = Arr[9]
    
    int *p;
    p = arr;
    
    if (arr == NULL || size == 0 || p == NULL) {
        return;
    }
    
    for (int i = 0; i < size; i++, p++) {
        
        *p = 100;
    }
    
}


@end

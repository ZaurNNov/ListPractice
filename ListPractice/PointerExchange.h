//
//  PointerExchange.h
//  ListPractice
//
//  Created by Zaur Giyasov on 09/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PointerExchange : NSObject

-(void)changeIntValue:(int *)value;
-(void)changeArrayValue:(int *)arr size:(size_t)size;

@end

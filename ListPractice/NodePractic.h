//
//  NodePractic.h
//  BlockDemo
//
//  Created by Zaur Giyasov on 08/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import <Foundation/Foundation.h>

// Односвязный список
typedef struct Node {
    int value;
    char *name;
    struct Node *nextNode;
} Node;

@interface NodePractic : NSObject

// exemple
-(void)mainExample;

// all methods
-(void)example;
-(void) push:(Node **)head data:(int)data;
-(int) pop:(Node **)head;
-(Node *) getNth:(Node *)head integer:(int)n;
-(Node *) getLast:(Node *)head;
-(void) pushBack:(Node *)head value:(int)value;
-(Node *) getLastButOne:(Node *)head;
-(void) popBack:(Node **)head;
-(void) popBackFast:(Node **)head;
-(void) insert:(Node *)head uinteger:(uint)integer value:(int)value;
-(int)deleteNth:(Node **)head integer:(int)n;
-(void)deleteList:(Node **)head;
-(void)fromArray:(Node **)head intArr:(int *)arr size:(size_t)size;
-(int *)toArray:(const Node *)head;
-(void)printLinkedList:(const Node *)head;







@end

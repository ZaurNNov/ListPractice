//
//  NodePractic.m
//  BlockDemo
//
//  Created by Zaur Giyasov on 08/06/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "NodePractic.h"

// Односвязный список
typedef struct Node {
    int value;
    char *name;
    struct Node *nextNode;
} Node;


@implementation NodePractic

-(void) nodePractic {
    
    [self mainExample];
    

    
}

-(void)example {
    // нод укеазывающий на пустоту
    Node *head = NULL;

    // new node
    Node *temp = (Node *)malloc(sizeof(Node));
    temp->value = 10;
    temp->name = "temp";
    temp->nextNode = head;

    head = temp;
}


-(void) push:(Node **)head data:(int)data {
    Node *temp = (Node *) malloc(sizeof(Node));
    temp->value = data;
    temp->nextNode = (*head);
    (*head) = temp;
}

-(int) pop:(Node **)head {
    Node *prev = NULL;
    int val;
    
    if (head == NULL) {
        exit(1);
    }
    prev = (*head);
    val = prev->value;
    (*head) = (*head)->nextNode;
    free(prev);
    return val;
}

-(Node *) getNth:(Node *)head integer:(int)n {
    int counter = 0;
    while (counter < n && head) {
        head = head->nextNode;
        counter++;
    }
    return head;
}

-(Node *) getLast:(Node *)head {
    if (head == NULL) {
        return NULL;
    }
    while (head->nextNode) {
        head = head->nextNode;
    }
    return head;
}

-(void) pushBack:(Node *)head value:(int)value {
    Node *last = [self getLast:head];
    Node *tmp = (Node *) malloc(sizeof(Node));
    
    tmp->value = value;
    tmp->nextNode = NULL;
    last->nextNode = tmp;
}

// вернуть предпоследнего (для удаления последнего - сделать его ссылку на следующитй равной нил)
-(Node *) getLastButOne:(Node *)head {
    if (head == NULL) {
        exit(-2);
    }
    if (head->nextNode == NULL) {
        return NULL;
    }
    while (head->nextNode->nextNode) {
        head = head->nextNode;
    }
    return head;
}

// удаление последнего
-(void) popBack:(Node **)head {
    Node *lastbn = NULL;
    // если нет
    if (!head) {
        exit(-1);
    }
    // если пусто
    if (!(*head)) {
        exit(-1);
    }
    
    lastbn = [self getLastButOne:*head];
    // если только один элемент в списке
    if (lastbn == NULL) {
        free(*head);
        *head = NULL;
        
    } else {
        free(lastbn->nextNode);
        lastbn->nextNode = NULL;
    }
}

-(void) popBackFast:(Node **)head {
    Node *pFwd = NULL; // текущий узел
    Node *pBwd = NULL; // предыдущий узел
    
    // получили нил
    if (!head) {
        exit(-1);
    }
    // список пуст
    if (!(*head)) {
        exit(-1);
    }
    
    pFwd = *head;
    while (pFwd->nextNode) {
        pBwd = pFwd;
        pFwd = pBwd->nextNode;
    }
    
    if (pBwd == NULL) {
        free(*head);
        *head = NULL;
    
    } else {
        free(pFwd->nextNode);
        pBwd->nextNode = NULL;
    }
}

-(void) insert:(Node *)head uinteger:(uint)integer value:(int)value {
    
    uint i = 0;
    Node *temp = NULL;
    
    // находим нужный, если вышли за пределы то выход из вайл
    while ((i < integer) && (head->nextNode)) {
        head = head->nextNode;
        i++;
    }
    
    temp = (Node *) malloc(sizeof(Node));
    temp->value = value;
    
    // если это не последний элемент, то next перекидывается на следующий узел
    if (head->nextNode) {
        temp->nextNode = head->nextNode;
        
    } else {
        temp->nextNode = NULL;
    }
    head->nextNode = temp;
}

-(int)deleteNth:(Node **)head integer:(int)n {
    if (n == 0) {
        return [self pop:head];
        
    } else {
        Node *prev = [self getNth:*head integer:n-1];
        Node *elm = prev->nextNode;
        int value = elm->value;
        
        prev->nextNode = elm->nextNode;
        free(elm);
        return value;
    }
}

-(void)deleteList:(Node **)head {
    Node *prev = NULL;
    while ((*head)->nextNode) {
        prev = (*head);
        (*head) = (*head)->nextNode;
        free(prev);
    }
    free(*head);
}


// для удобства - создать список из массива
-(void)fromArray:(Node **)head intArr:(NSArray *)arr size:(size_t)size {
    
    size_t i = size - 1;
    if (arr == NULL || size == 0) {
        return;
    }
    
    do {
        [self push:head data:arr[i]];
    } while (i-- != 0);
}


-(int *)toArray:(const Node *)head {
    
    int leng = sizeof(int);
    int *value = (int*) malloc(leng* sizeof(int));
    
    while (head) {
        value[--leng] = head->value;
        head = head->nextNode;
    }
    
    return value;
}

-(void)printLinkedList:(const Node *)head {
    while (head) {
        printf("%d ", head->value);
        head = head->nextNode;
    }
    printf("\nEND LIST\n");
}

-(void)mainExample {
    Node *head = NULL;
    int arr[] = { 1, 3, 8, 9, 15, 19, 24, 35, 48, 51 };
    
    // создание списка
    [self fromArray:&head intArr:arr size:10];
    
    [self printLinkedList:head];
    
    // вставка в середину большого значения *555 после 4-го элемента
    [self insert:head uinteger:4 value:555];
    [self printLinkedList:head];
}











@end
